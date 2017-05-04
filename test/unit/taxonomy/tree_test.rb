require 'test_helper'

class Taxonomy::TreeTest < ActiveSupport::TestCase
  setup do
    Services.publishing_api
      .stubs(:get_expanded_links)
      .returns(api_response)

    @root_taxon_id = :id
  end

  test ".new fetches data from publishing-api" do
    Services.publishing_api
      .expects(:get_expanded_links)
      .with(@root_taxon_id, with_drafts: false)

    Taxonomy::Tree.new(root_taxon)
  end

  # Example of expanded links hash:
  #
  # {
  #   "expanded_links" => {
  #     "child_taxons" => [
  #       {
  #         "base_path" => "/root-path",
  #         "content_id" => "c58fdadd-7743-46d6-9629-90bb3ccc4ef0",
  #         "title" => "I am the root taxon.",
  #         "links" => {
  #           "child_taxons" => [
  #             {
  #               "base_path" => "/child-path",
  #               "content_id" =>"47b6ce42-0bfa-42ee-9ff1-7a9c71ee9727",
  #               "title" => "I am the child taxon.",
  #               "links" => {}
  #             }
  #           ]
  #         }
  #       }
  #     ]
  #   }
  # }

  test ".parse_taxons returns an empty array when there are no child taxons" do
    assert parsed_result({ "expanded_links" => {} }).empty?
  end

  test ".parse_taxons parses a single child_taxon" do
    single_root_node = {
      "expanded_links" => {
        "child_taxons" => [
          node
        ]
      }
    }

    result = parsed_result(single_root_node)
    assert is_an_array_of_taxons(result)
    assert result.length == 1
  end

  test ".parse_taxons parses two child_taxons" do
    two_root_nodes = {
      "expanded_links" => {
        "child_taxons" => [
          node,
          node
        ]
      }
    }

    result = parsed_result(two_root_nodes)
    assert is_an_array_of_taxons(result)
    assert result.length == 2
  end

  test ".parse_taxons parses descendants of root node" do
    single_root_with_descendant = {
      "expanded_links" => {
        "child_taxons" => [
          node([node])
        ]
      }
    }

    result = parsed_result(single_root_with_descendant)
    assert result.length == 1
    assert is_an_array_of_taxons(result.first.children)
    assert result.first.children.length == 1
  end

  test ".parse_taxons sorts the taxon list alphabetically" do
    taxons = {
      "expanded_links" => {
        "child_taxons" => [
          node,
          node
        ]
      }
    }

    taxons["expanded_links"]["child_taxons"][0]["title"] = "zaphod"
    taxons["expanded_links"]["child_taxons"][1]["title"] = "allen"

    result = parsed_result(taxons)

    assert result.first.name == "allen"
    assert result.second.name == "zaphod"
  end

  def root_taxon
    @_root_taxon ||= stub(content_id: @root_taxon_id, 'children=': [])
  end

  def api_response
    @_api_response ||= stub(to_h: {})
  end

  def parsed_result(expanded_links)
    Taxonomy::Tree.new(root_taxon).parse_taxons(expanded_links)
  end

  def is_an_array_of_taxons(arr)
    arr.is_a?(Array) && arr.all? { |el| el.is_a? Taxonomy::Taxon }
  end

  def node(children = [])
    node = {
      "base_path" => "/base-path",
      "content_id" => "content_id",
      "title" => "Taxon title",
      "links" => {}
    }

    children.each do |child|
      node["links"]["child_taxons"] ||= []
      node["links"]["child_taxons"] << child
    end

    node
  end
end
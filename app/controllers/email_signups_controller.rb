class EmailSignupsController < PublicFacingController
  layout 'frontend'

  def show
    @classifications = Classification.order(:name).where("(type = 'Topic' and published_policies_count <> 0) or (type = 'TopicalEvent')").alphabetical
    ministerial_department_type = OrganisationType.find_by_name('Ministerial department')
    sub_organisation_type = OrganisationType.find_by_name('Sub-organisation')
    @live_ministerial_departments = Organisation.where("organisation_type_id = ? AND govuk_status ='live'", ministerial_department_type)
    @live_other_departments = Organisation.where("organisation_type_id NOT IN (?,?) AND govuk_status='live'", ministerial_department_type, sub_organisation_type)
    @world_locations = WorldLocation.all_by_type
  end

end
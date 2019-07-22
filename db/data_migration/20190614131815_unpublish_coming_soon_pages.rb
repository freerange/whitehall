# Content ids from the following Publishing API database query:
#
#  SELECT content_id FROM documents
#  INNER JOIN editions ON documents.id = editions.document_id
#  WHERE document_type = 'coming_soon' AND state = 'published' ORDER BY 1;
#

PUBLISHED_COMING_SOON_CONTENT_IDS = %w[
  01d6f614-b596-40a2-b624-2d4272aaf92d
  026472b4-f2f0-4e66-815b-539ff576871c
  064cad7b-d18b-428b-a167-c93e23b3ec08
  078457ce-15ad-49d7-8d0b-9aac5147669c
  08b8ecc6-4c7e-46e1-b7bc-7799acb1fe42
  09d5bdee-fb7d-4876-a1ca-8a870cd6beda
  0a3a0fe5-bc23-4277-aeba-a2e55a064888
  0c041180-ff66-4c31-87eb-7d1b88ef363a
  0dd79c47-9bfb-4cb0-a189-05e275a7c992
  0e5612d6-1e4e-41a5-8ae5-14fba797c1e9
  10fab847-2a80-439c-838c-927fbf38b4b6
  11f84e8e-e429-40bf-ad8c-70a41fe7504d
  12567ef1-e026-4865-8447-ea11fda04e7c
  1295311c-1d75-4d25-b551-2551064cb17b
  153f6cdc-0eec-4260-b73a-d0caf3c5239a
  17ba1a47-096c-4ee1-9d11-5dc503bee5ee
  1c84a38f-05bf-4483-950c-31f02e85db17
  1cde2509-5b5b-4d26-9242-f4895ba42804
  1fa7e891-1467-4680-9f35-e4ad8fe613fd
  22096a1f-9b08-4717-a03a-a011752c5425
  22c304e1-53a7-4f27-9939-3a87b9d637b4
  22e56dca-d5c5-4c19-bf8f-38e497a5b6a5
  2418433e-1f6d-4d7a-b45e-ba55983e8945
  26cd8845-2d8b-491b-a365-260571f2765a
  273b0d7f-1e12-49f4-bd5a-41ac0e53a9b3
  28462004-a091-4d05-b1f4-ce0dd560bac0
  29b0a12b-585a-45ca-98ed-12bef8d376dc
  33708910-5d3d-4266-910d-695f8b3bf49b
  33b062de-382b-4a1d-a736-2acef4cbbb1d
  34102e80-20ec-41f5-a5d4-f8781ddc4fce
  3450a5bb-c987-42ca-8de4-3841ac1bd11a
  3452622e-0216-4925-9a57-dde97cd742f5
  3658ff83-a11f-4edc-bc27-240ffe78a6cc
  366f892c-8360-4a0c-a7b9-8d65a5da0797
  36a48668-a981-4318-b14d-674ae38268f2
  3728c2c9-120e-4447-b3a3-f259a3767b40
  39a2340b-c1b1-4e21-814a-3e663f542bae
  3b1594c4-b2e3-49d9-a8ce-393ea8453989
  3c0e068b-21af-46fe-9b2f-d26e177bc9de
  42139cf3-3631-4f81-aa44-877d976344d4
  43fe66a8-edc7-45f2-83cc-878ec9e8ab3b
  47cbde55-5af8-4952-846b-e7059b0ae160
  4f2e6e70-4bd6-4e6e-bc4c-9ac9a221903d
  4fbeed24-fdc3-433b-970f-3522750a9f22
  5354de27-056d-4249-bf2d-c341c33a532f
  5389bb4e-41f8-4125-bc7c-419069b3c424
  53d1cdb8-2c19-4427-a247-912165851a5b
  5660a3e4-8282-459f-aa88-6c65bfd528d9
  573abc2b-9230-47c9-ae75-4c37ede029e3
  5a08fded-d571-425a-9dd7-8eae0c0b0940
  5b3e651f-0819-4bb0-a682-4b7bb710b19d
  5e77be5d-bdc6-4bb5-83f9-3725bc5f91b1
  5ec95edb-e1d7-437c-bd6d-16249ec64c39
  5fbba0ac-6639-48e7-87fb-45df7239c66e
  60d1b6b0-0d18-4141-a1de-c5a37a8b36e6
  6140d917-0895-4733-b33b-c4b237a1837e
  64a5d993-dc14-4b5d-8764-d73e805afb6e
  6561e192-969b-4c57-b456-298daca974d4
  6565bc12-cf1e-4768-a228-b0648e6faa71
  6934c5c0-6f28-4ed5-a6a8-d68cf583cb3d
  6aad9131-711b-4428-83ac-2616c26fe89b
  6b48e92b-6741-4da5-9231-aef60aaa0461
  6b9e09bb-5ad7-40ed-a3fd-a3de6b2ca5c7
  6bd7812c-e4aa-4fd5-9046-6c224bbc6e5d
  6be97086-0150-4e48-ac13-b1e34cf00fc7
  6c5603c9-2518-4743-bc47-d65871c44210
  6f3dab16-bb53-4d20-a8f7-743d7a8bbb2d
  6fa0f71e-f24a-48a1-b5c9-72c305800565
  705cbbad-8abc-4212-aca3-e784b64ac3f1
  7294de04-da95-44da-a55b-6f7148c97ae3
  74e034a2-92cc-42b1-8481-a640b7c1e482
  75fc4eb8-b5f8-4cc3-b590-5a664bed2fe1
  766c7318-30bf-47ea-9c8e-636732680341
  76be28fe-a994-4161-a936-267030d17151
  76f63a12-bd2e-4814-8b2a-cbfe6d77c891
  777e8a92-6293-4fe1-99fe-ead09cd14d15
  78899c53-d812-46a0-9763-4b6eb047b80c
  78add5b1-cb0d-40cf-9892-66e31d8be4e7
  78e0e905-62d8-4a5a-a36d-a41775cf5958
  7950ce3d-e876-4363-ade1-24cd2f7c95bf
  7954e75e-47ee-4346-aa32-7b26b610d182
  7cfc795b-89b6-4e7f-8d3e-54a76f1b0d51
  7d41df69-4d48-4056-8d8c-b49ccabcbd6e
  7de79b54-0620-4fad-a07f-5aa00199242d
  7f7d2005-f966-4cc0-9f6f-ad2cafe766d9
  8062c3d1-62a4-40b3-929a-9f09e719161e
  819e7b7c-f66d-48c8-8a90-16073bd37141
  81b7cc21-351c-45bc-aaa5-5396c8e06df4
  829b6c59-f4ae-40dd-9bb1-3de488ddc0f3
  84eee936-f4d2-4bbb-9e78-95a9d14e40bb
  85d0338b-0d2a-4eae-a5fe-2aba6abe541e
  86c8af27-8111-474b-86b3-99890500473b
  86db1dce-1dd1-4376-a1f8-9ed83e0460c8
  8758d2e0-e1d7-4bf9-ab6b-da9b4a65e4ca
  883f80a7-f869-4254-a9d5-62e529c2b852
  8c79822c-df0f-4e69-b392-478b68c610f9
  8d20352f-9aa5-4c85-89b3-33658fcb9f26
  8f2fea78-c599-4b24-baf9-fb3768f562c6
  90e58cbc-5679-445a-a676-f3d82a0488b5
  93c98f01-4fdb-4e7f-b327-758ae86e008e
  9532d4d7-4eed-4fc2-93bf-d9d0a45743bc
  973b4d74-3ecd-4e72-9b91-05d3980177f2
  9887b7ff-5dfa-4ad3-a529-01564937c3cd
  99d9184c-d9b5-44c1-ab34-3373fd343e08
  9d14c30a-4bca-4b16-bf58-0342b61c14b5
  9ebeb1e1-48da-459e-a668-c4da6a0a8adf
  a06e1f1c-37eb-4ddf-8bc7-a724abbd6c86
  a48aa646-8c83-429d-8c54-d143e39f91d6
  a8325a4b-da70-44db-a10d-a12d8107b136
  a9950cb8-e915-4e39-a95c-ef61f446002b
  aa5ab51f-fcec-4569-b102-5031adfc6db3
  ab37a397-6233-418b-b5e0-7608d70ac88d
  abe1bf6e-f7e3-4637-9554-99b814008d53
  ad5159ec-78a0-497b-8b3e-3a2d6a86463e
  b3d861c0-56fd-4e45-b974-d91ff211950f
  b4b296fd-a9a0-4de3-ad7a-24715f4dc6a8
  b5d08f9a-ff82-4c2f-917d-b796d648eb6d
  b6ba6c77-286d-42e9-ae41-eb0dfa7e809f
  b83691d6-f221-4db1-88eb-2e195bb148ec
  b9f510ec-a604-4d86-8f8c-7e54dd2e21d2
  baeca83e-d259-4199-ad5b-95c9cb785769
  bc98fd7e-2859-4978-8894-a6ca334aee67
  bce169e3-5df8-4463-8a57-24cd9396ca11
  bd6d2245-ede3-4358-b4ec-a0f01fc0f6d8
  bff86a89-9a2e-403c-99c9-d40b00ff223f
  c2e786a5-719f-45c5-9990-aa479240fb8c
  c3c1f3d7-e28b-4a8e-836e-979f49eccd7b
  c4623ff3-520a-4809-ba52-55c0f35e95f8
  c4813c05-c792-4f24-a9a8-54c639e81453
  c6dc9ad3-4e7d-456d-b41d-510ff9904665
  c77a8d06-f0d6-42fb-94d5-cda322bf0d2b
  c78fb15a-4f7d-4b84-aaa9-86e9279aa63b
  c8ecf3a5-2592-4509-a095-8ac66dd30b36
  ca19d737-7c7d-4a4e-8ccb-a457ff65907d
  caabe067-6ff2-4d6b-9e8e-47ce71aab124
  cce920f6-29fc-4eec-b3a9-11c58168eab6
  cd2abdfd-e6ee-4f22-8c10-689bb04ca708
  d29e7514-a63b-4d68-8d42-2f47c5d8f5df
  d2aad063-faa7-4d1b-952d-70ac84f175b0
  d388f783-568d-4700-b45f-00568fb84c31
  d46ba27f-26ea-45f6-8973-280a2273f013
  d6d19b55-4178-458d-bc75-0d61e705c898
  d874bd66-e903-4e31-87bf-406b58f92be1
  d933a221-f100-4049-8fc7-1f973cce6de3
  dead60b4-8753-4c3f-984f-310e03e26cb8
  e0ae9515-99a5-4109-9525-4c18ac89b1e1
  e1221bdb-f48f-4faa-85fc-184fda13c38f
  e30c4bce-c0c9-4117-b8ff-b0a875ab283e
  e3f8f48c-9a16-4420-b765-25044eecbe57
  e44a508b-f0b5-4d60-9178-c4653c467290
  e4c3639b-f038-40ba-9bd3-1c09c2b890b6
  e62804c4-4722-4e4a-9cb4-38711fa7f190
  ebb01ddf-09d1-46c6-9b9d-b7f353542d70
  ee1248ac-020b-42aa-9055-c96361efc0e4
  f0879bfd-657c-4d5b-9f93-bd8c6b0c8f3f
  f0c7a83d-de0f-491a-8630-eccea6091b63
  f1d5a6a7-da7d-4e61-9855-6f777cad39eb
  f36c8108-bd38-4b0b-8669-519660435599
  f74cc4a0-fbd3-458d-89f0-bab32884ed96
  fc7b710e-0295-4894-94af-7d4f112c5914
  fde79533-de22-4bfb-8cee-36e684fdd5d1
  fe660845-fe65-435f-91d0-9bc57a1d6f41
  ff8e86ef-6b83-44a3-91b2-0c047604112e
]

PUBLISHED_COMING_SOON_CONTENT_IDS.each do |content_id|
  Services.publishing_api.unpublish(
    content_id,
    type: 'vanish',
    discard_drafts: true
  )

  puts "unpublished #{content_id}"
end
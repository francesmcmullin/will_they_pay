UserType.create!([
  {name: "Basic"},
  {name: "Admin"}
])
Treatment.create!([
  {name: "HRT", description: "Hormone Replacement Therapy"},
  {name: "Speech Therapy", description: "Sessions with a registered speech and language therapist"}
])
Result.create!([
  {percent_covered: 0.8, days_waited: 17, days_waited_for_reimbursement: nil},
  {percent_covered: 0.0, days_waited: 0, days_waited_for_reimbursement: nil},
  {percent_covered: 1.0, days_waited: 0, days_waited_for_reimbursement: nil}
])
Provider.create!([
  {name: "St Vincents", description: "St Vincents Hospital", specialty: "N/A", area: "Ireland"},
  {name: "Mater Private", description: "", specialty: "N/A", area: ""}
])
Plan.create!([
  {name: "Basic Medicaid", description: "Bare essentials plan", area: "North Ohio", company_id: 3},
  {name: "PublicPlus care", description: "", area: "", company_id: 1},
  {name: "Kick off plan ILH", description: "", area: "", company_id: 2},
  {name: "Gold Plan", description: "Added cover for...", area: "Ohio", company_id: 3},
  {name: "Premier plan", description: "", area: "South Ohio", company_id: 3}
])
Company.create!([
  {name: "VHI", description: "Voluntary Health Insurer", area: "Ireland"},
  {name: "Irish Life", description: "", area: "Ireland"},
  {name: "BuckEye", description: "has medicaid plans", area: "Ohio"}
])
User.create!([
  {email: "blah@example.org", encrypted_password: "$2a$12$rTlM9BOHAqEKlN0A4c11IOLcJTSd/MsQFqETYJTcJBgMnOkSA8s3G", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_type_id: 1},
  {email: "person@example.org", encrypted_password: "$2a$12$FNAmXzHnghi5TklZZt1I/eiliWQwRPil66DLPGpOk0TDiP963vJXC", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_type_id: 1},
  {email: "alice@example.org", encrypted_password: "$2a$12$DwgItoZ5gyMf835KqFwGPuvgcToTIdJ4wyL4GHAxHtc5/0iI7nOxu", reset_password_token: nil, reset_password_sent_at: nil, remember_created_at: nil, user_type_id: 1}
])

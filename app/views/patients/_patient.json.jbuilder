json.extract! patient, :id, :title, :firstname, :middlename, :surname, :gender, :phonenumber, :dob, :created_at, :updated_at
json.url patient_url(patient, format: :json)

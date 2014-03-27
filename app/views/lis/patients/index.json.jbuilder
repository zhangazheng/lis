json.array!(@patients) do |patient|
  json.extract! patient, :name, :age
  json.url patient_url(patient, format: :json)
end

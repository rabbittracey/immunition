json.array!(@patient_immunizations) do |patient_immunization|
  json.extract! patient_immunization, :id, :title, :date_registered, :notes
  json.url patient_immunization_url(patient_immunization, format: :json)
end

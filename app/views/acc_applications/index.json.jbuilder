json.array!(@acc_applications) do |acc_application|
  json.extract! acc_application, 
  json.url acc_application_url(acc_application, format: :json)
end

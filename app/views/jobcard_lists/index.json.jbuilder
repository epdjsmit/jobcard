json.array!(@jobcard_lists) do |jobcard_list|
  json.extract! jobcard_list, :id, :title, :Description
  json.url jobcard_list_url(jobcard_list, format: :json)
end

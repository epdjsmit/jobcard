json.array!(@client_lists) do |client_list|
  json.extract! client_list, :id, :client_name, :surname, :adress, :cellnumber
  json.url client_list_url(client_list, format: :json)
end

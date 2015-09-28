json.array!(@macaddresses) do |macaddress|
  json.extract! macaddress, :id, :macid, :description, :owner, :remarks
  json.url macaddress_url(macaddress, format: :json)
end

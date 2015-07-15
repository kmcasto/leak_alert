json.array!(@agents) do |agent|
  json.extract! agent, :id, :name, :phone, :email, :address
  json.url agent_url(agent, format: :json)
end

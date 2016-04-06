json.array!(@usuarios) do |usuario|
  json.extract! usuario, :id, :name, :email
  json.url usuario_url(usuario, format: :json)
end

json.array!(@contactos) do |contacto|
  json.extract! contacto, :id, :email, :ip, :estado
  json.url contacto_url(contacto, format: :json)
end

json.array!(@quienes_somos) do |quien_somos|
  json.extract! quien_somos, :id, :mision, :vision, :politica_integral, :valores_corporativos, :historia
  json.url quien_somos_url(quien_somos, format: :json)
end

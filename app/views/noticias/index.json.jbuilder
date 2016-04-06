json.array!(@noticias) do |noticia|
  json.extract! noticia, :id, :titulo, :descripcion
  json.url noticia_url(noticia, format: :json)
end

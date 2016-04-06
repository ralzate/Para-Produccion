json.array!(@experiencias) do |experiencia|
  json.extract! experiencia, :id, :nombre, :entidad, :contratante, :unidad_de_negocio, :ciudad, :fecha_inicio, :fecha_terminacion, :valor_contrato, :numero_contrato
  json.url experiencia_url(experiencia, format: :json)
end

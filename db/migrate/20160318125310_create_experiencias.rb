class CreateExperiencias < ActiveRecord::Migration
  def change
    create_table :experiencias do |t|
      t.string :nombre
      t.string :entidad
      t.string :contratante
      t.string :unidad_de_negocio
      t.string :ciudad
      t.date :fecha_inicio
      t.date :fecha_terminacion
      t.integer :valor_contrato
      t.string :numero_contrato
      t.string :estado_experiencia

      t.timestamps null: false
    end
  end
end

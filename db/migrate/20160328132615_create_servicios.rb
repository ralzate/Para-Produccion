class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tipo
      t.text :descripcion

      t.timestamps null: false
    end
  end
end

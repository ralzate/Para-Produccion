class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio, scale: 2, precision: 10
      t.text :descripcion
      t.references :usuario, index: true, foreign_key: true
      t.attachment :avatar

      t.timestamps null: false
    end
  end
end

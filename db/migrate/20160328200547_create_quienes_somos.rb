class CreateQuienesSomos < ActiveRecord::Migration
  def change
    create_table :quienes_somos do |t|
      t.text :mision
      t.text :vision
      t.text :politica_integral
      t.text :valores_corporativos
      t.text :historia

      t.timestamps null: false
    end
  end
end

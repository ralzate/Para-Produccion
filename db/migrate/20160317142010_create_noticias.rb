class CreateNoticias < ActiveRecord::Migration
  def change
    create_table :noticias do |t|
      t.string :titulo
      t.text :descripcion
      t.string :estado_noticia

      t.timestamps null: false
    end
  end
end

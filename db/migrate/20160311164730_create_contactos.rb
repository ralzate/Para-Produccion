class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :email
      t.string :nombre
      t.string :email
      t.string :empresa
      t.string :ciudad
      t.string :telefono
      t.string :asunto
      t.text :mensaje
      t.string :ip

      t.timestamps null: false
    end
  end
end

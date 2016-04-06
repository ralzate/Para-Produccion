class AddImagenToServicios < ActiveRecord::Migration
  def self.up
    change_table :servicios do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :servicios, :imagen
  end
end

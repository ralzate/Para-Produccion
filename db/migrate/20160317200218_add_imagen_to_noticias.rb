class AddImagenToNoticias < ActiveRecord::Migration
  def self.up
    change_table :noticias do |t|
      t.attachment :imagen
    end
  end

  def self.down
    remove_attachment :noticias, :imagen
  end
end

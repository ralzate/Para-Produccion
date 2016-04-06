# == Schema Information
#
# Table name: noticias
#
#  id                  :integer          not null, primary key
#  titulo              :string
#  descripcion         :text
#  estado_noticia      :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

class Noticia < ActiveRecord::Base

	has_attached_file :imagen
	validates_attachment :imagen, 
	content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	
	def self.search(search)
	    where("titulo like '%#{search}%'  or descripcion like '%#{search}%'")
	end

	validates :titulo, :presence => {message: " es un campo obligatorio"}
	validates :descripcion, :presence => {message: " es un campo obligatorio"}
	validates :estado_noticia, :presence => {message: " es un campo obligatorio"}
	validates :imagen, :presence => {message: " es un campo obligatorio"}

end

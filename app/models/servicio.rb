# == Schema Information
#
# Table name: servicios
#
#  id                  :integer          not null, primary key
#  tipo              :string
#  descripcion         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

class Servicio < ActiveRecord::Base

	has_attached_file :imagen
	validates_attachment :imagen, 
	content_type: { content_type: ["image/jpeg", "image/gif", "image/png"] }
	
	def self.search(search)
	    where("tipo like '%#{search}%'  or descripcion like '%#{search}%'")
	end

	validates :tipo, :presence => {message: " es un campo obligatorio"}
	validates :descripcion, :presence => {message: " es un campo obligatorio"}

	
end

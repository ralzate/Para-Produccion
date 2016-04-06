# == Schema Information
#
# Table name: contactos
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  estado     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Contacto < ActiveRecord::Base
	#validates_presence_of :email, message: "Olvidaste ingresar el correo"
	#validates_uniqueness_of :email, message: "Este correo ya fue registrado"
	#validates_format_of :email, with: Devise::email_regexp, message: "No enviaste un correo válido"
	
	def self.search(search)
	    where("nombre like '%#{search}%'")
	end

end

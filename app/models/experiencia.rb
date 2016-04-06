# == Schema Information
#
# Table name: experiencias
#
#  id                :integer          not null, primary key
#  nombre            :string
#  entidad           :string
#  contratante       :string
#  alcance           :text
#  unidad_de_negocio :string
#  ciudad            :string
#  fecha_inicio      :date
#  fecha_terminacion :date
#  valor_contrato    :integer
#  numero_contrato   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class Experiencia < ActiveRecord::Base

	def self.search(search)
	    where("nombre like '%#{search}%'  or entidad like '%#{search}%'
	    	   or contratante like '%#{search}%'  or unidad_de_negocio like '%#{search}%'
	    	   or ciudad like '%#{search}%'  or numero_contrato like '%#{search}%'")
	end


end

# == Schema Information
#
# Table name: experiencias
#
#  id                :integer          not null, primary key
#  nombre            :string
#  entidad           :string
#  contratante       :string
#  unidad_de_negocio :string
#  ciudad            :string
#  fecha_inicio      :date
#  fecha_terminacion :date
#  valor_contrato    :integer
#  numero_contrato   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

FactoryGirl.define do
  factory :experiencia do
    nombre "MyString"
    entidad "MyString"
    contratante "MyString"
    unidad_de_negocio "MyString"
    ciudad "MyString"
    fecha_inicio "2016-03-18"
    fecha_terminacion "2016-03-18"
    valor_contrato 1
    numero_contrato "MyString"
  end
end

# == Schema Information
#
# Table name: quienes_somos
#
#  id                   :integer          not null, primary key
#  mision               :text
#  vision               :text
#  politica_integral    :text
#  valores_corporativos :text
#  historia             :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

FactoryGirl.define do
  factory :quien_somos do
    mision "MyText"
    vision "MyText"
    politica_integral "MyText"
    valores_corporativos "MyText"
    historia "MyText"
  end
end

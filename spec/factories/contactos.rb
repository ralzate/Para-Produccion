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

FactoryGirl.define do
  factory :contacto do
    email "MyString"
    ip "MyString"
    estado 1
  end
end

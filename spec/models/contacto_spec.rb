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

require 'rails_helper'

RSpec.describe Contacto, type: :model do
	it{ should validate_presence_of(:email).with_message("Olvidaste ingresar el correo") }

	it "should not create with invalid email" do
		email =  Contacto.new(email: "alejo")
		expect(email.valid?).to be_falsy
	end
	
	it "should not create with invalid email" do
		email =  Contacto.new(email: "alejoalzate12@gmail.com")
		expect(email.valid?).to be_truthy
	end

end

# == Schema Information
#
# Table name: productos
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  precio              :decimal(10, 2)
#  descripcion         :text
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Producto, type: :model do
	it{ should validate_presence_of :nombre}
	it{ should validate_presence_of :user}
	it{ should validate_presence_of :precio}

	it "should validte precio > 0" do
    	producto = FactoryGirl.build(:producto, precio: 0)
    	expect(producto.valid?).to be_falsy
    end
end

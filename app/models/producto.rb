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

class Producto < ActiveRecord::Base
	belongs_to :user
	validates_presence_of :nombre, :user, :precio
	validates :precio, numericality: { greater_than: 0 }
end

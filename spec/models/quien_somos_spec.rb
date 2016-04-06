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

require 'rails_helper'

RSpec.describe QuienSomos, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

# == Schema Information
#
# Table name: noticias
#
#  id                  :integer          not null, primary key
#  titulo              :string
#  descripcion         :text
#  estado_noticia      :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe Noticia, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end

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

RSpec.describe "Noticias", type: :request do
  describe "GET /noticias" do
    it "works! (now write some real specs)" do
      get noticias_path
      expect(response).to have_http_status(200)
    end
  end
end

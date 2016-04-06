# == Schema Information
#
# Table name: servicios
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  descripcion         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe "Servicios", type: :request do
  describe "GET /servicios" do
    it "works! (now write some real specs)" do
      get servicios_path
      expect(response).to have_http_status(200)
    end
  end
end

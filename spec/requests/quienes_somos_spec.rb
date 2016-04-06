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

RSpec.describe "QuienSomos", type: :request do
  describe "GET /quienes_somos" do
    it "works! (now write some real specs)" do
      get quienes_somos_path
      expect(response).to have_http_status(200)
    end
  end
end

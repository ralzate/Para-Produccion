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

RSpec.describe "Contactos", type: :request do
  describe "GET /contactos" do
    it "works! (now write some real specs)" do
      get contactos_path
      expect(response).to have_http_status(200)
    end
  end
end

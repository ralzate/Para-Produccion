require 'rails_helper'

RSpec.describe "contactos/index", type: :view do
  before(:each) do
    assign(:contactos, [
      Contacto.create!(
        :email => "Email",
        :ip => "Ip",
        :estado => 1
      ),
      Contacto.create!(
        :email => "Email",
        :ip => "Ip",
        :estado => 1
      )
    ])
  end

  it "renders a list of contactos" do
    render
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Ip".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end

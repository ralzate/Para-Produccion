require 'rails_helper'

RSpec.describe "contactos/show", type: :view do
  before(:each) do
    @contacto = assign(:contacto, Contacto.create!(
      :email => "Email",
      :ip => "Ip",
      :estado => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Ip/)
    expect(rendered).to match(/1/)
  end
end

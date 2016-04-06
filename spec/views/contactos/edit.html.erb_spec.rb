require 'rails_helper'

RSpec.describe "contactos/edit", type: :view do
  before(:each) do
    @contacto = assign(:contacto, Contacto.create!(
      :email => "MyString",
      :ip => "MyString",
      :estado => 1
    ))
  end

  it "renders the edit contacto form" do
    render

    assert_select "form[action=?][method=?]", contacto_path(@contacto), "post" do

      assert_select "input#contacto_email[name=?]", "contacto[email]"

      assert_select "input#contacto_ip[name=?]", "contacto[ip]"

      assert_select "input#contacto_estado[name=?]", "contacto[estado]"
    end
  end
end

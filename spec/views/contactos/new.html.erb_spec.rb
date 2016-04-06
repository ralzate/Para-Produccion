require 'rails_helper'

RSpec.describe "contactos/new", type: :view do
  before(:each) do
    assign(:contacto, Contacto.new(
      :email => "MyString",
      :ip => "MyString",
      :estado => 1
    ))
  end

  it "renders new contacto form" do
    render

    assert_select "form[action=?][method=?]", contactos_path, "post" do

      assert_select "input#contacto_email[name=?]", "contacto[email]"

      assert_select "input#contacto_ip[name=?]", "contacto[ip]"

      assert_select "input#contacto_estado[name=?]", "contacto[estado]"
    end
  end
end

require 'rails_helper'

RSpec.describe "noticias/new", type: :view do
  before(:each) do
    assign(:noticia, Noticia.new(
      :titulo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders new noticia form" do
    render

    assert_select "form[action=?][method=?]", noticias_path, "post" do

      assert_select "input#noticia_titulo[name=?]", "noticia[titulo]"

      assert_select "textarea#noticia_descripcion[name=?]", "noticia[descripcion]"
    end
  end
end

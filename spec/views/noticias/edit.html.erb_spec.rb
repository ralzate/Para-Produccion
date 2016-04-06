require 'rails_helper'

RSpec.describe "noticias/edit", type: :view do
  before(:each) do
    @noticia = assign(:noticia, Noticia.create!(
      :titulo => "MyString",
      :descripcion => "MyText"
    ))
  end

  it "renders the edit noticia form" do
    render

    assert_select "form[action=?][method=?]", noticia_path(@noticia), "post" do

      assert_select "input#noticia_titulo[name=?]", "noticia[titulo]"

      assert_select "textarea#noticia_descripcion[name=?]", "noticia[descripcion]"
    end
  end
end

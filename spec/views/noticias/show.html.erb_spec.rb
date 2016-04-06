require 'rails_helper'

RSpec.describe "noticias/show", type: :view do
  before(:each) do
    @noticia = assign(:noticia, Noticia.create!(
      :titulo => "Titulo",
      :descripcion => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Titulo/)
    expect(rendered).to match(/MyText/)
  end
end

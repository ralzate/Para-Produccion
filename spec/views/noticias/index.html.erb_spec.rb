require 'rails_helper'

RSpec.describe "noticias/index", type: :view do
  before(:each) do
    assign(:noticias, [
      Noticia.create!(
        :titulo => "Titulo",
        :descripcion => "MyText"
      ),
      Noticia.create!(
        :titulo => "Titulo",
        :descripcion => "MyText"
      )
    ])
  end

  it "renders a list of noticias" do
    render
    assert_select "tr>td", :text => "Titulo".to_s, :count => 2
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
  end
end

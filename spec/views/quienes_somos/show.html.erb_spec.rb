require 'rails_helper'

RSpec.describe "quienes_somos/show", type: :view do
  before(:each) do
    @quien_somos = assign(:quien_somos, QuienSomos.create!(
      :mision => "MyText",
      :vision => "MyText",
      :politica_integral => "MyText",
      :valores_corporativos => "MyText",
      :historia => "MyText"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
    expect(rendered).to match(/MyText/)
  end
end

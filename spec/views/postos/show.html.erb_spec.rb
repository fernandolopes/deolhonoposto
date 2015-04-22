require 'rails_helper'

RSpec.describe "postos/show", type: :view do
  before(:each) do
    @posto = assign(:posto, Posto.create!(
      :nome => "Nome",
      :logradouro => "Logradouro",
      :numero => "",
      :nota => "",
      :bairro => "Bairro",
      :cidade => "Cidade",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Nome/)
    expect(rendered).to match(/Logradouro/)
    expect(rendered).to match(//)
    expect(rendered).to match(//)
    expect(rendered).to match(/Bairro/)
    expect(rendered).to match(/Cidade/)
    expect(rendered).to match(/1.5/)
    expect(rendered).to match(/1.5/)
  end
end

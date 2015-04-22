require 'rails_helper'

RSpec.describe "postos/index", type: :view do
  before(:each) do
    assign(:postos, [
      Posto.create!(
        :nome => "Nome",
        :logradouro => "Logradouro",
        :numero => "",
        :nota => "",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :latitude => 1.5,
        :longitude => 1.5
      ),
      Posto.create!(
        :nome => "Nome",
        :logradouro => "Logradouro",
        :numero => "",
        :nota => "",
        :bairro => "Bairro",
        :cidade => "Cidade",
        :latitude => 1.5,
        :longitude => 1.5
      )
    ])
  end

  it "renders a list of postos" do
    render
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Logradouro".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Bairro".to_s, :count => 2
    assert_select "tr>td", :text => "Cidade".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
  end
end

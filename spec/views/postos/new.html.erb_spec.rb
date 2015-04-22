require 'rails_helper'

RSpec.describe "postos/new", type: :view do
  before(:each) do
    assign(:posto, Posto.new(
      :nome => "MyString",
      :logradouro => "MyString",
      :numero => "",
      :nota => "",
      :bairro => "MyString",
      :cidade => "MyString",
      :latitude => 1.5,
      :longitude => 1.5
    ))
  end

  it "renders new posto form" do
    render

    assert_select "form[action=?][method=?]", postos_path, "post" do

      assert_select "input#posto_nome[name=?]", "posto[nome]"

      assert_select "input#posto_logradouro[name=?]", "posto[logradouro]"

      assert_select "input#posto_numero[name=?]", "posto[numero]"

      assert_select "input#posto_nota[name=?]", "posto[nota]"

      assert_select "input#posto_bairro[name=?]", "posto[bairro]"

      assert_select "input#posto_cidade[name=?]", "posto[cidade]"

      assert_select "input#posto_latitude[name=?]", "posto[latitude]"

      assert_select "input#posto_longitude[name=?]", "posto[longitude]"
    end
  end
end

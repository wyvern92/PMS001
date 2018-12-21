require 'rails_helper'

RSpec.describe "authentications/edit", type: :view do
  before(:each) do
    @authentication = assign(:authentication, Authentication.create!(
      :user_id => 1,
      :user_name => "MyString",
      :password => ""
    ))
  end

  it "renders the edit authentication form" do
    render

    assert_select "form[action=?][method=?]", authentication_path(@authentication), "post" do

      assert_select "input[name=?]", "authentication[user_id]"

      assert_select "input[name=?]", "authentication[user_name]"

      assert_select "input[name=?]", "authentication[password]"
    end
  end
end

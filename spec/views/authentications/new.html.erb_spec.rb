require 'rails_helper'

RSpec.describe "authentications/new", type: :view do
  before(:each) do
    assign(:authentication, Authentication.new(
      :user_id => 1,
      :user_name => "MyString",
      :password => ""
    ))
  end

  it "renders new authentication form" do
    render

    assert_select "form[action=?][method=?]", authentications_path, "post" do

      assert_select "input[name=?]", "authentication[user_id]"

      assert_select "input[name=?]", "authentication[user_name]"

      assert_select "input[name=?]", "authentication[password]"
    end
  end
end

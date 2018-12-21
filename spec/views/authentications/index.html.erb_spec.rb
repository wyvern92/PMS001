require 'rails_helper'

RSpec.describe "authentications/index", type: :view do
  before(:each) do
    assign(:authentications, [
      Authentication.create!(
        :user_id => 2,
        :user_name => "User Name",
        :password => ""
      ),
      Authentication.create!(
        :user_id => 2,
        :user_name => "User Name",
        :password => ""
      )
    ])
  end

  it "renders a list of authentications" do
    render
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "User Name".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end

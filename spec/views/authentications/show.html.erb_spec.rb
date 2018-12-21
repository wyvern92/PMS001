require 'rails_helper'

RSpec.describe "authentications/show", type: :view do
  before(:each) do
    @authentication = assign(:authentication, Authentication.create!(
      :user_id => 2,
      :user_name => "User Name",
      :password => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/2/)
    expect(rendered).to match(/User Name/)
    expect(rendered).to match(//)
  end
end

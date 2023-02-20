require 'rails_helper'

RSpec.describe "users/index", type: :view do
  before(:each) do
    assign(:users, [
      User.create!(
        name: "Name",
        second_name: "Second Name"
      ),
      User.create!(
        name: "Name",
        second_name: "Second Name"
      )
    ])
  end

  it "renders a list of users" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "Second Name".to_s, count: 2
  end
end

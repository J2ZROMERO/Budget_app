require 'rails_helper'

RSpec.describe "budgets/index", type: :view do
  before(:each) do
    assign(:budgets, [
      Budget.create!(
        name: "Name",
        amount: "9.99",
        author_id: 2,
        group_id: 3
      ),
      Budget.create!(
        name: "Name",
        amount: "9.99",
        author_id: 2,
        group_id: 3
      )
    ])
  end

  it "renders a list of budgets" do
    render
    assert_select "tr>td", text: "Name".to_s, count: 2
    assert_select "tr>td", text: "9.99".to_s, count: 2
    assert_select "tr>td", text: 2.to_s, count: 2
    assert_select "tr>td", text: 3.to_s, count: 2
  end
end

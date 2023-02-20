require 'rails_helper'

RSpec.describe "budgets/new", type: :view do
  before(:each) do
    assign(:budget, Budget.new(
      name: "MyString",
      amount: "9.99",
      author_id: 1,
      group_id: 1
    ))
  end

  it "renders new budget form" do
    render

    assert_select "form[action=?][method=?]", budgets_path, "post" do

      assert_select "input[name=?]", "budget[name]"

      assert_select "input[name=?]", "budget[amount]"

      assert_select "input[name=?]", "budget[author_id]"

      assert_select "input[name=?]", "budget[group_id]"
    end
  end
end

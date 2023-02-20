require 'rails_helper'

RSpec.describe "budgets_groups/new", type: :view do
  before(:each) do
    assign(:budgets_group, BudgetsGroup.new(
      group: nil,
      budget: nil
    ))
  end

  it "renders new budgets_group form" do
    render

    assert_select "form[action=?][method=?]", budgets_groups_path, "post" do

      assert_select "input[name=?]", "budgets_group[group_id]"

      assert_select "input[name=?]", "budgets_group[budget_id]"
    end
  end
end

require 'rails_helper'

RSpec.describe "budgets_groups/edit", type: :view do
  before(:each) do
    @budgets_group = assign(:budgets_group, BudgetsGroup.create!(
      group: nil,
      budget: nil
    ))
  end

  it "renders the edit budgets_group form" do
    render

    assert_select "form[action=?][method=?]", budgets_group_path(@budgets_group), "post" do

      assert_select "input[name=?]", "budgets_group[group_id]"

      assert_select "input[name=?]", "budgets_group[budget_id]"
    end
  end
end

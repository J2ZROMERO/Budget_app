require 'rails_helper'

RSpec.describe "budgets_groups/index", type: :view do
  before(:each) do
    assign(:budgets_groups, [
      BudgetsGroup.create!(
        group: nil,
        budget: nil
      ),
      BudgetsGroup.create!(
        group: nil,
        budget: nil
      )
    ])
  end

  it "renders a list of budgets_groups" do
    render
    assert_select "tr>td", text: nil.to_s, count: 2
    assert_select "tr>td", text: nil.to_s, count: 2
  end
end

require 'rails_helper'

RSpec.describe "budgets_groups/show", type: :view do
  before(:each) do
    @budgets_group = assign(:budgets_group, BudgetsGroup.create!(
      group: nil,
      budget: nil
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(//)
    expect(rendered).to match(//)
  end
end

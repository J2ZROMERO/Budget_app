require 'rails_helper'

RSpec.describe "budgets/show", type: :view do
  before(:each) do
    @budget = assign(:budget, Budget.create!(
      name: "Name",
      amount: "9.99",
      author_id: 2,
      group_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/9.99/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

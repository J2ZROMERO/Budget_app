require 'rails_helper'

RSpec.describe "groups/show", type: :view do
  before(:each) do
    @group = assign(:group, Group.create!(
      name: "Name",
      icon: "Icon",
      author_id: 2,
      budget_id: 3
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Icon/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
  end
end

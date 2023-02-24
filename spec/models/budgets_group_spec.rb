require 'rails_helper'

RSpec.describe BudgetsGroup, type: :model do
  
before(:each) do
  @first_user = User.new(name: 'jose1',second_name: 'zepeda', email: 'user1@hotmail.com', password: 123456, password_confirmation: 123456)
  @fisrt_budget = Budget.new(name: 'Other', amount: 213.121, user_id: @first_user.id)
  @fisrt_group = Group.new(name: 'bussines', icon: 'iconimage', user_id: @first_user.id)
  @fisrt_budget.groups << @fisrt_group

end

describe 'When the BudgetGroup model is tested' do
  it 'validates the name of the object' do
    expect(@fisrt_budget.groups.first.icon).to eq 'iconimage'
  end
end  

end

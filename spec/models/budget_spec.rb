require 'rails_helper'

RSpec.describe Budget, type: :model do
  before(:each) do
    @first_user = User.new(name: 'jose1', second_name: 'zepeda', email: 'user1@hotmail.com', password: 123_456,
                           password_confirmation: 123_456)
    @fisrt_budget = Budget.new(name: 'Other', amount: 213.121, user_id: @first_user.id)
  end

  describe 'When the Budget model is tested' do
    it 'validates the name of the object' do
      expect(@fisrt_budget.name).to eq 'Other'
    end
  end
end

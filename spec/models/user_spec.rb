require 'rails_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @first_user = User.new(name: 'jose1', second_name: 'zepeda', email: 'user1@hotmail.com', password: 123_456,
                           password_confirmation: 123_456)
  end

  describe 'When the user model is tested' do
    it 'validates the name of the object' do
      expect(@first_user.name).to eq 'jose1'
    end
  end
end

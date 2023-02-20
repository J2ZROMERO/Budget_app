require 'rails_helper'

RSpec.describe Group, type: :model do
  
  before(:each) do
    @first_user = User.new(name: 'jose1',second_name: 'zepeda', email: 'user1@hotmail.com', password: 123456, password_confirmation: 123456)
    @fisrt_group = Group.new(name: 'bussines', icon: 'asjdasjdjas', user_id: @first_user.id)
    
  end

  describe 'When the group model is tested' do
    it 'validates the name of the object' do
      expect(@fisrt_group.name).to eq 'bussines'
    end
  end  

end

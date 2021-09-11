require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:each) do
      @user = User.new({first_name: 'Senay', last_name: 'Hailu', email: '1@1.com', password: '1234'})
    end
  
    it("Saves User when all fields are filled") do
      expect(@user.save).to eq true
    end

    

  end
end

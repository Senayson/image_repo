require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'Validations' do
    before(:each) do
      @user = User.new({first_name: 'Senay', last_name: 'Hailu', email: '1@1.com', password: '123456789'})
    end
  
    it("Saves User when all fields are filled") do
      expect(@user.save).to eq true
    end

    it("Shouldn't save when firstname is nil") do
      @user.first_name = nil
      expect(@user.save).to eq false
    end
    it("Shouldn't save when lastname is nil") do
      @user.last_name = nil
      expect(@user.save).to eq false
    end
    it("Shouldn't save when email is nil") do
      @user.email = nil
      expect(@user.save).to eq false
    end
    it("Shouldn't save when email already exists") do
      @user2 = User.new({first_name: 'Simon', last_name: 'Hailu', email: '1@1.com', password: '1234567890'})
      @user2.save
      expect(@user.save).to eq false
    end
    it("Shouldn't save when password is nil") do
      @user.password = nil
      expect(@user.save).to eq false
    end
    it("Shouldn't save when password length is not between 8 and 20") do
      @user.password = '123'
      expect(@user.save).to eq false
    end

  end
end

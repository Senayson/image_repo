require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'Validations' do
    before(:each) do
      @image = Image.new({title: 'Sleeping baby', size: '10', category: 'Portrait', url: 'https://thumbs.dreamstime.com/b/newborn-baby-sleeping-father-hand-new-born-kid-studio-portrait-black-background-148011708.jpg'})
    end
  
    it("Saves image when all fields are filled") do
      expect(@image.save).to eq true
    end

    
  end
end

require 'rails_helper'

RSpec.describe Image, type: :model do
  describe 'Validations' do
    before(:each) do
      @image = Image.new({title: 'Sleeping baby', size: '10', category: 'Portrait', url: 'https://thumbs.dreamstime.com/b/newborn-baby-sleeping-father-hand-new-born-kid-studio-portrait-black-background-148011708.jpg'})
    end
  
    it("Saves image when all fields are filled") do
      expect(@image.save).to eq true
    end
    it("Shoudn't save image when title is nil") do
      @image.title = nil
      expect(@image.save).to eq false
    end
    it("Shoudn't save image when size is nil") do
      @image.size = nil
      expect(@image.save).to eq false
    end
    it("Shoudn't save image when category is nil") do
      @image.category = nil
      expect(@image.save).to eq false
    end
    it("Shoudn't save image when source url is nil") do
      @image.url = nil
      expect(@image.save).to eq false
    end
  
  end
end

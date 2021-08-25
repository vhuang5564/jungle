require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do

    it 'should have a name if presence is true' do
      @category = Category.new
      @products = Product.create(id: 1, name: "Apple", description: "text", image: "string", price_cents: "10", quantity: 1, category_id: 1)
      expect(@products.name).to be_valid
    end

    it 'should have a price if presence is true' do
      @category = Category.new
      @products = Product.create(id: 1, name: "Apple", description: "text", image: "string", price_cents: "10", quantity: 1, category_id: 1)
      expect(@products.price).to be_valid
    end

    it 'should have a quantity if presence is true' do
      @category = Category.new
      @products = Product.create(id: 1, name: "Apple", description: "text", image: "string", price_cents: "10", quantity: 1, category_id: 1)
      expect(@products.quantity).to be_valid
    end

    it 'should have a category if presence is true' do
      @category = Category.new
      @products = Product.create(id: 1, name: "Apple", description: "text", image: "string", price_cents: "10", quantity: 1, category_id: 1)
      expect(@products.category_id).to be_valid
    end

  end
end

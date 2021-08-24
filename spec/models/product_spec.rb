require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    it 'should have a name if presence is true' do
      @category = Category.new
      @products = Product.create(name: "Apple", description: "text", image: "string", price_cents: "10", quantity: 1, category_id: 1)
      raise @products
      expect(@product.name).to be_valid
    end
  end
end

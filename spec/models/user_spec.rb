require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do

    it 'must be created with a user name' do
      user = User.new(id: 1, name: "Name", email: "email@email.com", password_digest: "password")
      expect(user.name).to be_present
    end

  end
end

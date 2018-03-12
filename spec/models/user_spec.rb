require 'rails_helper'

RSpec.describe User, type: :model do
	it "is invalid without a username" do
		user = User.new(username: nil)
		expect(user).not_to be_valid
	end

	it "is invalid without a email" do 
		email = User.new(email: nil)
		expect(email).not_to be_valid
	end

	it "is valid with required attributes" do
		user = User.new(username: "David", email: "david@example.com")
		expect(user).to be_valid
	end

	it ""
end

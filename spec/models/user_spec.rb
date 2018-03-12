require 'rails_helper'

RSpec.describe User, type: :model do

	let(:user) { build(:user) }
	

	it "is invalid without a username" do
		user.username = nil
		expect(user).not_to be_valid
	end

	it "is invalid without a email" do 
		user.email = nil
		expect(user).not_to be_valid
	end

	it "has many posts" do 
		expect(User.reflect_on_association(:posts).macro).to eq(:has_many)
	end

	it "is valid with required attributes" do
		user.username = "David"
		user.email = "david@example.com"
		expect(user).to be_valid
	end

	it "has a valid factory" do 
		expect(user).to be_valid
	end
end

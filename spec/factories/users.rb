FactoryBot.define do
  factory :user do
    username { FFaker::Internet.user_name }
    email  { FFaker::Internet.email }

    after(:build) do |user|
    	[:blog].each do |post|
    		user.posts << FactoryBot.build(:blog, user: user)
    	end
    end
  end
end

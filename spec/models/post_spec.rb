require 'rails_helper'

RSpec.describe Post, type: :model do
  
  it "is invalid without a title" do
  	title = Post.new(title: nil)
  	expect(title).not_to be_valid
  end

  it "is invalid without a article" do 
  	article = Post.new(article: nil)
  	expect(article).not_to be_valid
  end

  it "is valid with required attributes" do 
  	blog = Post.new(title: "First Post", article: "Example text in the article")
  	expect(blog).to be_valid
  end

  it "has a valid factory" do
  	expect(FactoryBot.build(:blog)).to be_valid
  end

  it "belongs to User"
  
end

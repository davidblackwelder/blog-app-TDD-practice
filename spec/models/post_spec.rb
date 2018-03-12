require 'rails_helper'

RSpec.describe Post, type: :model do
  
  it "is invalid without a title" do
  	blog = Post.new(title: nil)
  	expect(blog).not_to be_valid
  end

  it "is invalid without a article" do 
  	article = Post.new(article: nil)
  	expect(article).not_to be_valid
  end
end

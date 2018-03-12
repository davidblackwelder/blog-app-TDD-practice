FactoryBot.define do
  factory :blog, class: Post do
    title "First Blog Post"
    article "Example text in a blog post."
  end

  factory :invalid_blog, class: Post do
  	title nil
  	article nil
  end
end

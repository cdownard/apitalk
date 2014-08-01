json.posts do |json|
  json.array!(@blog_posts) do |blog_post|
    json.(blog_post, :id, :title, :body, :published_at)
    json.author do |json|
      json.(blog_post.author, :name, :email)
      json.tags blog_post.author.tags, :name
    end
    json.url blog_post_url(blog_post, format: :json)
  end
end
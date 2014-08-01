json.post do |json|
  json.(@blog_post, :title, :body, :published_at)
  json.url blog_post_url(@blog_post)

  json.author do |json|
    json.(@blog_post.author, :name)
    json.url author_url(@blog_post.author)
  end

  json.tags @blog_post.tags, :name
end
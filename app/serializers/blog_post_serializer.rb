class BlogPostSerializer < ActiveModel::Serializer
  attributes :body, :published_at, :url, :author
  has_many :tags

  def url
    blog_post_url(object)
  end
end

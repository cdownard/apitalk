class Author < ActiveRecord::Base
  has_many :blog_posts
  has_many :tags, as: :taggable
end

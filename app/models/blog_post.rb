class BlogPost < ActiveRecord::Base
  belongs_to :author
  has_many :tags, as: :taggable
end

class CreateBlogPosts < ActiveRecord::Migration
  def change
    create_table :blog_posts do |t|
      t.text :body
      t.date :published_at
      t.integer :author_id

      t.timestamps
    end
  end
end

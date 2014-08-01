object @blog_post
attributes :title, :body, :published_at
node(:url) {|post| blog_post_url(post)}

child :author do
	attributes :name, :tags	
	node(:url) {|author| author_url(author)}
end

child :tags do
	attributes :name
end
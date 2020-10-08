class Author

    attr_accessor :name, :post

    @@post_count = 0

    def initialize(name)
        @name = name
    end

    def add_post(post)
        post.author = self
    end

    def posts
        #Post.all_posts.select {|post| post.author == self}
        Post.all.select {|post| post.author == self}
    end

    def add_post_by_title(name)
        posts = Post.new(name)
        posts.author = self
    end

    def self.post_count
        Post.all.count 
    end

end

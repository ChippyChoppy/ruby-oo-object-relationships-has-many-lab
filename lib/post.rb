class Post
    attr_accessor :author, :title

    #@@all_posts = []
    @@all = []
    def initialize(title)
        @title = title
        all
        #_posts
    end

    def all#_posts
        #@@all_posts << self
        @@all << self 
    end

    def self.all#_posts
        #@@all_posts
        @@all
    end

    def author_name
        if author
            self.author.name
        else
            nil
        end
    end
end

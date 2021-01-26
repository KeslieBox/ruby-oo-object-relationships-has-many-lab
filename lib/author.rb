class Author
    attr_accessor :name, :title

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def posts
        Post.all.select do |post|
            post.author == self
        end
    end

    def add_post(post)
        post.author = self
        # binding.pry
    end

    def add_post_by_title(post)
        add_post(Post.new(post))
        # binding.pry
    end

    def self.post_count
        Post.all.count
    end

    

end
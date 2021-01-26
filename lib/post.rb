class Post
    attr_accessor :author, :name, :title
    
        @@all = []
    
        def initialize(name)
            @name = name
            @title = title
            @@all << self
        end
    
        def self.all
            @@all
        end
    
    
        def author_name
           @author ? @author.name : nil
        end
    
    end
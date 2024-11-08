require_relative"author.rb"

class Book < Author
    attr_accessor :title

    def initialize(title, author)
        @title = title
        super(@name = author.name, @biography = author.biography)
    end

    def to_s
         "Book: title: #{@title}, Author: #{@name}, biography:#{@biography} "
    end
end
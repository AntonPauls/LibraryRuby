require_relative"base_entity.rb"

class Book < BaseEntity

    attr_reader :title, :author_id

    def initialize(title,author)
      super
      @title = title
      @author_id = author.id
    end

    def to_s
       "Book: title: #{@title}, author_id:  #{@author_id}"
    end
end
require_relative"base_entity.rb"

class Author < BaseEntity
    attr_accessor :name, :biography
    def initialize(name, biography)
        super
        @name, @biography = name, biography
    end
    def to_s
        "Author: name:#{@name}, biography:#{@biography} "
    end
end
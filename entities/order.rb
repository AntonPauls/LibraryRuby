require_relative"base_entity.rb"

class Order < BaseEntity
    attr_accessor :book_id, :reader_id, :date
    def initialize(book, reader, date = Time.now)
        super
        @book_id = book.id
        @reader_id = reader.id
        @date = date
    end
end

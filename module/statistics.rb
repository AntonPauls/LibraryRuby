require "yaml"
require 'set'

module Statistics 
    def theBestReader(orders, readers)
        counts = Hash.new(0)
        orders.each do |element| 
            counts[element.reader_id] += 1
        end
        id_best_reader = counts.max_by { |key, value| value }[0]
        readers.find{|obj| obj.id == id_best_reader}
    end

    def theMostPopularBook(orders)
        idTheMostPopularBook = creatHashBooks.max_by { |key, value| value }[0]
        found = books.find{|obj| obj.id == idTheMostPopularBook}
    end

    def oneOfTheThirdTheBestBooks(orders)
        result = ::Set.new
        top_books = creatHashBooks.sort_by {|k, v| -v}.first(3)
        sorted_orders = orders.group_by{|a| a.book_id}
        top_books.each do |e|
            sorted_orders[e[0]].each{|order| result.add(order.reader_id)}
        end

        result.length
        # 1. top_books отсортировать хеш от большего к меньшему с помошью sort_by и взять первые три самые популярные
        # 2. sorted_orders сгрупировать orders по id_book
        # 3. проходиим each по top_books и берем у sorted_orders значение и получаем масив
        # 4. наполняем сет

    end

    def creatHashBooks
        countsBooks = Hash.new(0)
        orders.each do |element|
            countsBooks[element.book_id] += 1
        end
        countsBooks
    end

    def writeLibraryWithYami(library)
        File.open("library.yml", "w") do |file|
            file.write(library.to_yaml)
          end
    end
    

    def readLibrary()
        library = YAML.load_file("library.yml")
        puts library.books 
        puts library.orders 
        puts library.readers 
        puts library.authors
    end

end
require "yaml"

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
        idTheMostPopularBook = creatHashBooks().max_by { |key, value| value }[0]
        found = books.find{|obj| obj.id == idTheMostPopularBook}
    end

    def oneOfTheThirdTheBestBooks(orders)
        idTheMostPopularBook = creatHashBooks().max_by { |key, value| value }[0]
        creatHashBooks()[idTheMostPopularBook]
    end

    def creatHashBooks()
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
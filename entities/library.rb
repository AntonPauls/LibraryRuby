require_relative "../module/statistics.rb"
require_relative "../errors/errors_catcher.rb"

class Library

    include ErrorsCatcher
    include Statistics

    attr_accessor :books, :orders, :readers, :authors


    def initialize()
        @books = []
        @orders = []
        @readers = []
        @authors =  []
    end

    def add(entity)
        case entity
        when Book then @books << entity
        when Order then @orders << entity
        when Reader then @readers << entity
        when Author then @authors << entity
        else raise InstanceClassError
        end
    end

    def the_best_reader()
        theBestReader(@orders, @readers)
    end

    def the_most_popular_book()
        theMostPopularBook(@orders, @books)
    end

    def writeLibraryDataWithYaml(library)
        writeLibraryWithYami(library)
    end

    def readLibraryDataWithYaml()
        readLibrary()
    end
end
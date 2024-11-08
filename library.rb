

class Library
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

    def to_s
        "#{@orders}"
    end
end
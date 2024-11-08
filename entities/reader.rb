require_relative"base_entity.rb"

class Reader < BaseEntity
    attr_accessor :name, :email, :city, :street, :house
    def initialize(name, email, city, street, house)
        super
        @name = name
        @email = email
        @city = city
        @street = street
        @house = house
    end
    def to_s
         "Reader: name: #{@name}, email:  #{@email},  city:  #{@city}, street:  #{@street}, house:  #{@house}"
    end
end
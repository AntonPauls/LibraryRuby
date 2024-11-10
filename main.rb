require_relative "entities/reader.rb"
require_relative "entities/book.rb"
require_relative "entities/author.rb"
require_relative "entities/order.rb"
require_relative "entities/library.rb"
require_relative "errors/errors_catcher.rb"
require_relative "module/statistics.rb"



reader1 = Reader.new("Anton", "email.com","Plauen","Hiaanstrasse","9")
reader2 = Reader.new("Ivan", "email.com","Plauen","Gogolestrasse","9")
reader3 = Reader.new("Maksim", "email.com","Plauen","Langestrasse","9")

author1 = Author.new("Tolstoi"," Ценитель вишего искуства")
author2 = Author.new("Gogol"," Убит народом")
author3 = Author.new("Peshkin"," Умер в голоде и страхе ")

book1 = Book.new("Voina i mir", author1);
book2 = Book.new("Svit", author2);
book3 = Book.new("Dontes", author3);
book4 = Book.new("Dontes i Elena", author3);

order1 = Order.new(book1,reader2,"21.03.24")
order2 = Order.new(book2,reader1,"11.06.24")
order3 = Order.new(book4,reader3,"06.09.24")
order4 = Order.new(book4,reader1,"21.03.24")
order5 = Order.new(book4,reader1,"31.03.24")
order6 = Order.new(book3,reader1,"11.03.24")
order7 = Order.new(book3,reader1,"01.03.24")
order8 = Order.new(book3,reader2,"01.03.24")
order9 = Order.new(book4,reader2,"01.03.24")
order10 = Order.new(book2,reader2,"01.03.24")

library = Library.new()
library.add(order1)
library.add(order2)
library.add(order3)
library.add(order4)
library.add(order5)
library.add(order6)
library.add(order7)
library.add(order8)
library.add(order9)
library.add(order10)

library.add(reader1)
library.add(reader2)
library.add(reader3)

library.add(book1)
library.add(book2)
library.add(book3)
library.add(book4)


library.add(author1)
library.add(author2)
library.add(author3)

puts library.the_best_reader()
puts
puts library.the_most_popular_book()
puts
puts library.countOfPeopleOnTheBestBook()

# library.writeLibraryDataWithYaml(library)
# library.readLibraryDataWithYaml()
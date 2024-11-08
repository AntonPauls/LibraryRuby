require_relative"entities/reader.rb"
require_relative"entities/book.rb"
require_relative"entities/author.rb"
require_relative"entities/order.rb"
require_relative"entities/library.rb"
require_relative"errors/errors_catcher.rb"

reader1 = Reader.new("Anton", "email.com","Plauen","Hiaanstrasse","9")
reader2 = Reader.new("Ivan", "email.com","Plauen","Gogolestrasse","9")
reader3 = Reader.new("Maksim", "email.com","Plauen","Langestrasse","9")

author1 = Author.new("Tolstoi"," Ценитель вишего искуства")
author2 = Author.new("Gogol"," Убит народом")
author3 = Author.new("Peshkin"," Умер в голоде и страхе ")

book1 = Book.new("Voina i mir", author1);
book2 = Book.new("Svit", author2);
book3 = Book.new("Dontes", author3);

order1 = Order.new(book1,reader1,"21.03.24")
order2 = Order.new(book2,reader2,"11.06.24")
order3 = Order.new(book1,reader3,"06.09.24")
order4 = Order.new(book3,reader1,"21.03.24")


library = Library.new()
library.add(order1)
library.add(order2)
library.add(order3)
library.add(order4)

puts library

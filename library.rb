class Book
	def initialize(title, author = '?', year = '?')
		@title = title
		@author = author
		@year = year
	end
	def book_description
		"\n#{@title} was written by #{@author} in #{@year}."
	end
end

class Library
	attr_reader :shelf_1, :shelf_2, :shelf_3
	def initialize
		@shelf_1 = []
		@shelf_2 = []
		@shelf_3 = []
	end
	def enshelf_1(book)
		shelf_1 << book
	end	
	def enshelf_2(book)
		shelf_2 << book
	end
	def enshelf_3(book)
		shelf_3 << book	
	end
	def unshelf_1(book)
		shelf_1.delete(book)
	end
	def unshelf_2(book)
		shelf_2.delete(book)
	end
	def unshelf_3(book)
		shelf_3.delete(book)
	end
	def all_books
		"\nShelf 1: #{shelf_1}  Shelf 2: #{shelf_2} Shelf_3: #{shelf_3}"
	end	
end




wpGtR = Book.new("why's (poignant) Guide to Ruby","why the lucky stiff",2005)
library = Library.new
p library.shelf_1
WtRFG = Book.new('Where the Red Fern Grows')
puts WtRFG.book_description
library.enshelf_1("wpGtR")
p library.shelf_1
puts library.all_books
puts wpGtR.book_description
library.enshelf_2("WtRFG")
puts library.all_books
library.unshelf_1("wpGtR")
library.enshelf_2("wpGtR")
puts library.all_books

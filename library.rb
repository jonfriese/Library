class Book 
	def initialize(book)
		@book = book
	end
	
	def enshelf(shelf)
		shelf.push(@book) 
	end
	
	def unshelf(shelf) 
		shelf.delete(@book)
	end

end

class Shelf < Book
	$shelf_1 = []
	$shelf_2 = []
	$shelf_3 = []

end

class Library < Shelf
	def self.all
		print $shelf_1 + $shelf_2 + $shelf_3
	end	
end

LOTR = Book.new("LOTR")
LOTF = Book.new("LOTF")
LOTR.enshelf($shelf_1)
LOTF.enshelf($shelf_2)
puts Library.all
LOTF.unshelf($shelf_2)
puts Library.all
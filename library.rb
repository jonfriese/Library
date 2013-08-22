class Library
    @@shelves = nil
    
    def initialize
        @@shelves = [[],[],[]]
    end
    
    def add_shelf
        @@shelves.push([])
    end
    
    def print_library
    	p @@shelves
    end   
end

class Shelves < Library
    def print_shelf(x)
    	x -= 1
    	p @@shelves[x]
    end
end

class Book < Shelves
    def enshelf(a , x)
	x -= 1
	@@shelves[x].push(a)
    end
	
    def unshelf(a , x)
	x -= 1
	@@shelves[x].delete(a)
    end
end
		
x = Library.new
x.add_shelf
t = Shelves.new
t.print_shelf(1)
new_book = Book.new
new_book.enshelf("James and the Giant Peach" , 1)
t.print_shelf(1)
new_book.unshelf("James and the Giant Peach" , 1)
t.print_shelf(1)
x.add_shelf
new_book.enshelf("Where the Red Fern Grows", 4)
t.print_shelf(4)
x.print_library

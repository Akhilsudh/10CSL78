class BookController < ApplicationController
#scaffold :book
protect_from_forgery
def create
    @books = Book.new( params[ :books ] )
    if(@books[:title]!=nil)
    if @books.save
     flash[ :notice ] ='Successfully created.'  
    end
end
end

def list
@books = Book.find( :all)
end

def result
@book = params[ :books ]
@title=@book[ :title]
@books=Book.find( :all, :conditions => ["title = ?",@title])
end
end

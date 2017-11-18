class MainController < ApplicationController

def search_book
@title=params[:title]
@book_search=Bookinfo.find(:all,:conditions=>["title=?",@title])
end
end
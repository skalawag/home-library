class BooksController < ApplicationController
  def index
    @books = Book.all.sort { |x,y| x.authors.first.name <=> y.authors.first.name }
  end
end

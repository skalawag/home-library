class BooksController < ApplicationController
  def index
    @books = Book.all.sort { |x,y| x.authors.first.name.split.last <=> y.authors.first.name.split.last }
  end
end

class BooksController < ApplicationController
  def index
    @books = Book.all.sort { |a, b| a.alphabetizer <=> b.alphabetizer }
  end
end

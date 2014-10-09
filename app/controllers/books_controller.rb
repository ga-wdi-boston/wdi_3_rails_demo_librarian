class BooksController < ApplicationController
  def create
    book = Book.create(book_params)
    redirect_to library_path(book.library)
  end

  private
  def book_params
    params.require(:book).permit(:title, :library_id)
  end
end

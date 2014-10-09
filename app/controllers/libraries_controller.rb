# When a req is made to /libraries GET
# Router says "Make a new instance of a LibrariesController
# and then execute the index method/action"

class LibrariesController < ApplicationController
  def index
    @libraries = Library.all
    # render(*args)
  end

  def show
    @library = Library.find(params[:id])
    @books = @library.books
  end
end

class BooksController < ApplicationController

  def index
    @books = Book.all
    end

  def new
    @book = Book.new
  end

  
    
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to book_url(@book)
    else
      render :new
    end
  end

  def show
    find_book
  end

  def edit
    find_book
  end

  def update
    find_book

    if @book.update(book_params)
      redirect_to book_url(@book)
    else
      render :edit
    end
  end

  def destroy
    find_book

    if @book.destroy
      flash[:notice] = "Book deleted"
      redirect_to books_url
    else
      flash[:notice] = "Book could not be deleted"
      redirect_to books_url
    end
   end

  private

    def find_book
      @book = Book.find(params[:id])
    end

  

    def book_params
      params.require(:book).permit(:title, :body, :author_id,:category_ids => [])
    end
end

class BooksController < ApplicationController
  
  def index
    @books = Book.all
  end

  def show
    @book = Book.find(params[:id])
  end

  def new
    # redirect_to books_path, notice: "You must be logged in to add a book" if !current_user
    @book = Book.new
  end

  def edit
    # redirect_to @book, notice: "Only the owner of the book can edit." if !(current_user.id == @book.user_id)
    @book = Book.find(params[:id])
  end

  def create
    @book = Book.new(book_params)

    if @book.save
      redirect_to @book, notice: "Book created successfully."
    else 
      render 'new'
    end 
  end

  def update 
    @book = Book.find(params[:id])

    if @book.update(book_params)
      redirect_to @book, notice: "Book successfully updated."
    else
      render 'edit'
    end
  end

  def destroy
    @book = Book.find(params[:id])
    @book.destroy

    redirect_to books_path, notice: "Book removed from library."
  end

  private
    def book_params
      params.require(:book).permit(:title, :author, :genre, :url)
    end
end

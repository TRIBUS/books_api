class BooksController < ApplicationController
  def index
    render json: books
  end

  def show
    render json: book
  end

  def create
    @book = Book.create!(book_params)

    render json: book, status: :created
  end

  def update
    book.update!(book_params)

    render json: book
  end

  def destroy
    book.destroy

    head :ok
  end

  private

  def book
    @book ||= Book.find(params[:id])
  end

  def book_params
    params.require(:book).permit(:name)
  end

  def books
    @books ||= Book.all
  end
end

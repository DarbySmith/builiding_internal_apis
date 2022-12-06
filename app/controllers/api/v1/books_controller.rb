class Api::V1::BooksController < ApplicationController
  def index
    if params[:reading_level]
      render json: Book.where(reading_level: params[:reading_level])
    else
      render json: Book.all
    end
  end

  def show
    render json: Book.find(params[:id])
  end

  def create
    render json: Book.create(book_params)
  end

  def update
    render json: Book.update(params[:id], book_params)
  end

  def destroy
    render json: Book.delete(params[:id])
  end

  def sell
    book = Book.find(params[:id])
    render json: book.update_attribute(:number_sold, book.number_sold += 1)
  end

  private

    def book_params
      params.require(:book).permit(:title, :author, :summary, :genre, :number_sold)
    end
end
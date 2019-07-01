class BooksController < ApplicationController
  def index
    @books = Book.all
    @book_NO = 0
  end

  def show
   @book = Book.find_by(id: params[:id])
   @book_NO = params[:book_NO]
  end
  def new
    @book = Book.new
  end  
  def create 
    @book = Book.new
    @book.name = params[:book][:name]
    @book.date = params[:book][:date] 
    @book.star =  params[:book][:star]
    @book.impression =  params[:book][:impression]
    @book.save
    redirect_to books_path, notice: '新しい本をしました！'
  end
  def edit
    @book = Book.find_by(id: params[:id])
  end  
  def update
    @book = Book.find_by(id: params[:id])
    @book.name = params[:book][:name]
    @book.date = params[:book][:date] 
    @book.star =  params[:book][:star]
    @book.impression =  params[:book][:impression]
    @book.save
    redirect_to books_path, notice: '本を編集しました！'
  end
  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    redirect_to books_path, notice: '本が削除されました！'
  end  
end

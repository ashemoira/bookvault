# frozen_string_literal: true

# book controller controller
class BooksController < ApplicationController
  before_action :fetch_book, only: %i(show edit update destroy)

  permits :title, :author, :category, :page, :format

  def index
    @books = Book.all
  end

  def show; end

  def new
    @book = Book.new
  end

  def edit; end

  def create(book)
    @book = Book.new(book)

    if @book.save
      redirect_to books_path
    else
      render :new
    end
  end

  def update(book)
    if @book.update(book)
      redirect_to books_path
    else
      render :edit
    end
  end

  def destroy
    @book.destroy
    redirect_to books_path
  end

  private

  def fetch_book(id)
    @book = Book.find(id)
  end
end

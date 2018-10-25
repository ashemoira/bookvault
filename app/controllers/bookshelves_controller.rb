class BookshelvesController < ApplicationController
  def index
    @bookshelves = Bookshelf.all
  end

  def show
  end

  def new
    @bookshelf = Bookshelf.new
  end

  def edit
  end

  def create
    @bookshelf = Bookshelf.new(bookshelf_params)

    if @bookshelf.save
      redirect_to @bookshelf, notice: '本棚の登録が完了しました'
    else
      render :new
    end
  end

  def update
    if @bookshelf.update(bookshelf_params)
      redirect_to @bookshelf, notice: '本棚の更新が完了しました'
    else
      render :edit
    end
  end

  def destroy
    @bookshelf.destroy
    redirect_to books_url, notice: '本棚の削除に成功しました'
  end

  private

    def set_bookshelf
      @bookshelf = Bookshelf.find(params[:id])
    end

    def book_params
      params.require(:bookshelf).permit(:title)
    end
end

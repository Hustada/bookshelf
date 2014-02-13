  class BooksController < ApplicationController

    def index  
      @books = Book.paginate :page => params[:page], :per_page => 10
    end

    def show
      @book = Book.find params[:id]
      @comments = @book.comments.paginate :page => params[:page], :per_page => 10, :order => 'created_at ASC'
    end

####
    def new
      @book = Book.new
    end

    def create
      @book = Book.new params[:book]
      if @book.save
        flash[:notice] = "#{@book.title} was saved"
        redirect_to @book
      else
        render :new
      end
    end

    def edit
      @book = Book.find params[:id]
    end


    def update
      @book = Book.find params[:id]
      if @book.update_attributes(params[:book])
        flash[:notice] = "#{@book.title} was saved"
        redirect_to @book
      else
        render :edit
      end
    end

    def destroy
      book = Book.find params[:id]
      book.destroy
      flash[:notice] = "#{@book.title} was deleted forever"
      redirect_to books_path
    end
  end
class BooksController < ApplicationController
  # Display a new form to User Submit
  def new
    @book = Book.new
    @subjects = Subject.all
  end

  # Collect data from object :book
  def book_params
    params.require(:books).permit(:title, :price,:subject_id, :description)
  end

# receive Form from user to create new User in DB
  def create
    @book = Book.new(book_params)
    if @book.save
      redirect_to :action => 'list'
    else
      @subjects = Subject.all
      render :action => 'new'
    end
  end

# list all book in DB
  def list
    @books = Book.all
  end

# show a book detail
  def show
    @book = Book.find(params[:id])
  end

# receive data from user and update it into DB
  def update
    @book = Book.find(params[:id])
    if @book.update_attributes(book_params).save
      redirect_to :action => 'show', :id => @book
    else
      @subjects = Subject.all
      render :action => 'edit'
    end
  end

# Disyplay a book to user edit it
  def edit
    @book = Book.find(params[:id])
    @subjects = Subject.all
  end

# remove user from DB
  def delete
    Book.find(params[:id]).destroy
    redirect_to :action => 'list'
  end

  # display a subject
  def show_subjects
    @subject = Subject.find(params[:id])
  end



end

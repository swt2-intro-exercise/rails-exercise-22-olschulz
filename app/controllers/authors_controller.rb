class AuthorsController < ApplicationController
  def index
  end

  def new
    @author = Author.new
  end
  def create
    @author = Author.new(author_params)

    if @author.save
      redirect_to root_path, notice: 'Success!'
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  private
    def author_params
      params.require(:author).permit(:first_name, :last_name, :homepage)
    end
end

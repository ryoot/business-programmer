class ProgrammersController < ApplicationController
  def index
    @programmers = Programmer.all
  end

  def show
    @programmer = Programmer.find(params[:id])
  end

  def new
    @programmer = Programmer.new
  end

  def create
    @programmer = Programmer.new(programmer_params)
    @programmer.user_id = current_user.id
    @programmer.save
    redirect_to programmer_path(@programmer)
  end

  def edit
    @programmer =Programmer.find(params[:id])
  end

  def update
    @programmer = Programmer.find(params[:id])
    @programmer.update(programmer_params)
    redirect_to programmer_path(@programmer)
  end

  def destroy
    programmer = Programmer.find(params[:id])
    programmer.destroy
    redirect_to programmers_path
  end



  private
  def programmer_params
    params.require(:programmer).permit(:title, :body, :image)
  end
end

class ProgrammersController < ApplicationController
  before_action :authenticate_user!, except: [:index]
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
    if @programmer.save
      redirect_to programmer_path(@programmer), notice: '投稿に成功しました。'
    else
      render :new
    end
  end

  def edit
    @programmer =Programmer.find(params[:id])
    if @programmer.user!= current_user
      redirect_to programmers_path, alert: 'アクセスできません'
    end
  end

  def update
    @programmer = Programmer.find(params[:id])
    if @programmer.update(programmer_params)
      redirect_to programmer_path(@programmer), notice: '投稿に成功しました。'
    else
      render :edit
    end
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

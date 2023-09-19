class Public::PubsController < ApplicationController
  def new
    @pub = Pub.new
  end

  def create
    @pub = Pub.new(pub_params)
    @pub.user_id = current_user.id
    @pub.save
    redirect_to pubs_path
  end

  def index
    @pubs = Pub.all
    @user = current_user
  end

  def show
    @pub = Pub.find(params[:id])
    @user = @pub.user
  end

  def edit
    pub = Pub.find(params[:id])
    unless pub.user.id == current_user.id
      redirect_to pubs_path
    end
    @pub = Pub.find(params[:id])
  end

  def update
    @pub = Pub.find(params[:id])
    if @pub.update!(pub_params)
       redirect_to pub_path(@pub.id)
    else
       render :edit
    end
  end

  private
  def pub_params
    params.require(:pub).permit(:name, :introduction, :average_budget, images: [])
  end
end

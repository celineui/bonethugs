class BonethugsController < ApplicationController

  def index
    @bonethugs = Bonethug.all
  end

  def show
    @bonethug = Bonethug.find(params[:id])
  end

  def new
    @bonethug = Bonethug.new

  end

  def create
    @bonethug = Bonethug.create(params[:bonethug])

    redirect_to bonethugs_url
  end

  def edit
    @bonethug = Bonethug.find(params[:id])

  end

  def update
    @bonethug = Bonethug.find(params[:id])
    @bonethug.update_attributes(params[:bonethug])
    redirect_to bonethug_url(@bonethug.id), :notice => "updated Bone"

  end

  def destroy
    bonethug = Bonethug.find(params[:id])
    bonethug.destroy

    redirect_to bonethugs_url
  end

end

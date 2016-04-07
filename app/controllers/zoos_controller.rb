class ZoosController < ApplicationController
  before_action :zoo, except: [:index, :new, :create]

  def index
    @zoos = Zoo.all
  end

  def show
  end

  def new
    @zoo = Zoo.new
  end

  def edit
  end

  def create
    @zoo = Zoo.new(zoo_params)
    if @zoo.save
      redirect_to zoos_path
    else
      render :new
    end
  end

  def update
    if @zoo.update(zoo_params)
      redirect_to zoos_path
    else
      render :edit
    end
  end

  def destroy
    @zoo.destroy
    redirect_to zoos_path
  end

  private
    def zoo_params
      params.require(:zoo).permit(:name)
    end

    def zoo
      @zoo = Zoo.find(params[:id])
    end
end

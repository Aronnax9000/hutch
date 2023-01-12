class BarnsController < ApplicationController
def index
    @barns = Barn.all
  end

  def show
    @barn = Barn.find(params[:id])
  end
 
 def new
    @barn = Barn.new
  end

def create
    @barn = Barn.new(barn_params)

    if @barn.save
      redirect_to @barn
    else
      render :new, status: :unprocessable_entity
    end
  end
def edit
    @barn = Barn.find(params[:id])
  end

  def update
    @barn = Barn.find(params[:id])

    if @barn.update(barn_params)
      redirect_to @barn
    else
      render :edit, status: :unprocessable_entity
    end
  end
 
  def destroy
    @barn = Barn.find(params[:id])
    @barn.destroy

    redirect_to barns_path, status: :see_other
  end
  private
    def barn_params
      params.require(:barn).permit(:name, :description)
    end
end

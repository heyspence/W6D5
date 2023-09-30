class CatsController < ApplicationController
    def index
        @cats = Cat.all

        render :index
    end

    def create
        @cat = Cat.create!(cat_params)
        redirect_to cat_url(@cat)
    end

    def new
        render :new
    end

    def edit
        @cat = Cat.find(params[:id])
        render :edit
    end

    def show
        @cat = Cat.find(params[:id])
        render :show
    end

    def update
    end

    private 
    def cat_params
        params.require(:cat).permit(:name, :birth_date, :color, :sex, :description)
    end
end

class CatsController < ApplicationController
    def index
        @cats = Cat.all

        render :index
    end
    def create
    end
    def new
    end
    def edit
    end
    def show
    end
    def update
    end
end

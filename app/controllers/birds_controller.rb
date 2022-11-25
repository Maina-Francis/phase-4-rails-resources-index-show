class BirdsController < ApplicationController
    #Get /birds
    def index
        birds = Bird.all
        render json: birds 
    end

    #Get /birds/:id
    def show 
        birds = Bird.find_by(id: params[:id])
        if birds
            render json: birds 
        else
            render json: {error: "Bird not found"}, status: :not_found
        end
    end
end

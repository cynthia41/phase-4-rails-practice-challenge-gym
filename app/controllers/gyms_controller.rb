class GymsController < ApplicationController
    def index
        gyms = Gym.all
        render json: gyms, status: :ok
    end

    def show
      gym = Gym.find_by(id: params[:id])
      if gym
        render json: gym, status: :created
      else
        render json: { error: "Oops! Gym not found" }, status: :not_found
      end
    end
  
    def destroy
      gym = Gym.find_by(id: params[:id])
      if gym
        gym.destroy
        head :no_content
      else
        render json: { error: "Gym not found" }, status: :not_found
      end
    end
end

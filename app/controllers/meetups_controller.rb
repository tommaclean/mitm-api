class MeetupsController < ApplicationController
    before_action :set_meetup_for_destroy, except: [:index, :show, :create]
  
    def index
        @meetups = Meetup.where(user: current_user)
        render json: @meetups
    end

    def show
      @meetup = Meetup.find(params[:id])
      render json: @meetup
    end

    def create
        # debugger
        @meetup = Meetup.new(meetup_params)
        if @meetup.save
          render json: @meetup
        else
          render json: { errors: meetup.errors.full_messages }, status: :unprocessable_entity
        end
    end

    def destroy
      @meetup = Meetup.find(params[:id])
      @fav_meetup = Favorite.where(meetup: @meetup)
      @meetup.destroy 
      @fav_meetup.destroy
    end


    def meetup_params
      params.permit(:user_id, :address, :name, :place_id, :price_level, :status, place_coor: [:lat, :lng])
    end

    def set_meetup_for_destroy
     @meetup = Meetup.find(params[:id])
    end
end

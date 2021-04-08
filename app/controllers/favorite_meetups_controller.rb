class FavoriteMeetupsController < ApplicationController
    before_action :set_meetup, except: [:index]

    def index
      @fav_meetups = Favorite.where(user: current_user)
      # render json: @fav_meetups
      @mapped_favs = @fav_meetups.map { |fav| fav.meetup }
      render json: @mapped_favs
    end
    
    def create
        # debugger
      if Favorite.create(meetup: @meetup, user: current_user)
        redirect_to @meetup, notice: 'meetup has been favorited'
      else
        redirect_to @meetup, alert: 'Something went wrong...*sad panda*'
      end
    end
    
    def destroy
      Favorite.where(meetup_id: @meetup.id, user_id: current_user.id).first.destroy
      redirect_to @meetup, notice: 'meetup is no longer in favorites'
    end
    
    private
    
    def set_meetup
      # debugger
      @meetup = Meetup.find(params[:meetup_id])
    end
  end
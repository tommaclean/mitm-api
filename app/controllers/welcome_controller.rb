class WelcomeController < ActionController::API
    def index
        @meetups = Meetup.all
        render json: @meetups
    end
end

class WelcomeController < ApplicationController
    def index
        render json: Meetup.all
    end
end

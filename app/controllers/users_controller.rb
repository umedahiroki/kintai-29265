class UsersController < ApplicationController
    def show
        @plays = current_user.plays.order("created_at DESC")
    end
end

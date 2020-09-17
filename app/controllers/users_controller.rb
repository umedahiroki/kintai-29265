class UsersController < ApplicationController
    def show
        @plays = current_user.plays
    end
end

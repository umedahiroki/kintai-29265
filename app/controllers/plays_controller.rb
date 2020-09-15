class PlaysController < ApplicationController

    def index
    @date = Date.current.strftime('%Y/%m/%d') 
    weekday = ["(月)","(火)","(水)","(木)","(金)","(土)","(日)"]
    @week = weekday[Date.today.wday - 1]
    @play = Play.new
    end

    def create
      @play = Play.new(play_params)
        if @play.save
        redirect_to root_path
        else
        render :index
        end
    end

    private
    def play_params
      params.require(:play).permit(:attend_id).merge(user_id: current_user.id)
    end


end

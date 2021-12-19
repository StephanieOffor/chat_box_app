class ChatroomController < ApplicationController
    before_action :require_user # before executing codes below validate user

    def index
       @message = Message.new
       @messages = Message.custom_msg_display
    end

    def show

    end



end

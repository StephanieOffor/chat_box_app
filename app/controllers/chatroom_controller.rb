class ChatroomController < ApplicationController
    before_action :require_user

    def index
       @message = Message.new
       @messages = Message.custom_msg_display
    end

    def show

    end



end

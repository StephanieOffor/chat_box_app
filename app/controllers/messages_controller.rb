class MessagesController < ApplicationController
    before_action :require_user

    def create
        message = current_user.messages.build(msg_params)
        if message.save
          ActionCable.server.broadcast "chatroom_channel", 
                                        msg: message_render(message)
        else
          redirect_to chatroom_path
        end
    end
    
    private
    def msg_params
        params.require(:message).permit(:body)	
    end

    def message_render(message)
        render(partial: 'message', locals: {message: message})
    end
end
#params[:message][:body]
class ContactController < ApplicationController

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(params[:message])

    if @message.valid?
      NotificationsMailer.new_message(@message).deliver
      redirect_to(root_path, :notice => "Thanks for getting in touch! I will get back to you as soon as possible.")
    else
      redirect_to(root_path, :alert => "Oops! Please make sure you filled all the fields correctly.")
    end
  end

end

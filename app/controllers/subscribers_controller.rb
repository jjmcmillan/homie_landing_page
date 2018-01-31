class SubscribersController < ApplicationController
  def new
    @subscriber = Subscriber.new
  end
  
  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      redirect_to new_subscriber_path
    else
      flash[:danger] = "Please input your email"
      redirect_to new_subscriber_path
    end
  end
  
  private
    def subscriber_params
       params.require(:subscriber).permit(:email)
    end
end
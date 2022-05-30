class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    
    if user && user.authenticate(params[:session][:password])
      puts "*" * 100
      puts "IF"
      puts "*" * 100
      
      session[:user_id] = user.id
      redirect_to cars_path
    else
      puts "*" * 100
      puts "ELSE"
      puts "*" * 100
      redirect_to root_path
    end
  end

  def new
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end
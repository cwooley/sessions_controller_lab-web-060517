class SessionsController < ApplicationController
  def new

  end

  def create
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to root_path
    else
      redirect_to '/sessions/new'
    end
  end

  def destroy
    if session[:name]
      session[:name]= nil
    end
    redirect_to root_path
  end
end

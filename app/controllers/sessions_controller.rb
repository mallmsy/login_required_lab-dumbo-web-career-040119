class SessionsController < ActionController::Base

  def new
  end

  def create
    if !params[:name] || params[:name].empty?
      redirect_to login_path
    else
      session[:name] = params[:name]
      redirect_to hello_path
    end
  end

  def destroy
    session.delete :name
    redirect_to hello_path
  end
end

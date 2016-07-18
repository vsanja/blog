class SessionsController < ApplicationController
  skip_before_action :authorize
  def new
  end

  def create
    user = User.find_by(name :params[:name])
    if user and user.authenticate(params[:password])   #uporedjuje da li je isto ime iz baze sa onim unetim
      sessions[:user_id] = user.id
      redirect_to admin_url  #ako je sve u redu on ga preusmerava na nalog
    else
      redirect_to login_url, alert: "Invalid Username or Password"  #a ako nije u redu prikaze mu poruku
    end
  end

  def destroy   #funkcija za brisanje korisnika
    sessions[:user_id] = nil
    redirect_to login_url, alert: "Successfully logged out"
  end
end

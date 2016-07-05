class PagesController < ApplicationController
  def x
  end

  def subscribe
  	@user = User.new(name: params[:name], email: params[:email], age: params[:age])
  	if @user.save
  		redirect_to root_path,
  			notice: "Se ha guardado el usuario"
  	else
  		redirect_to root_path,
  			alert: "No hemos podido guardar el usuario, inténtalo de nuevo"
  	end
  end

  def landing
  	render :layout => 'layouts/layout2'
  end
end

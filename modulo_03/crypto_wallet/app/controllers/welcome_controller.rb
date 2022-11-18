class WelcomeController < ApplicationController
  def index
    @nome = params[:nome]
    @curso = params[:curso]
    cookies[:curso] = "Curso de Ruby on Rails do mano jaja [COOKIES]"
    session[:curso] = "Curso de Ruby on Rails do mano quiquison [Session]"
  end
end

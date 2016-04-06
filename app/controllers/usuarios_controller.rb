# == Schema Information
#
# Table name: usuarios
#
#  id                     :integer          not null, primary key
#  name                   :string
#  email                  :string
#  created_at             :datetime         not null
#  updated_at             :datetime         not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#


class UsuariosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @usuarios = Usuario.search(params[:search]).page(params[:page]).per_page(5).order('id ASC')
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @usuario = Usuario.find(params[:id])
  end

  def new
    @usuario = Usuario.new
  end

  def edit
    @usuario = Usuario.find(params[:id])
  end

  def create
    @usuario = Usuario.new(usuario_params)
    render :action => :new unless @usuario.save
  end

  def update
    @usuario = Usuario.find(params[:id])
    render :action => :edit unless @usuario.update_attributes(usuario_params)
  end


  def update
    @usuario = Usuario.find(params[:id])
    render :action => :edit unless @usuario.update_attributes(usuario_params)
  end

  def destroy
    @usuario = usuario.find(params[:id])
    @usuario.destroy
  end

  private
  def set_usuario
    @usuario = usuario.find(params[:id])
  end 
  
  def usuario_params
    params.require(:usuario).permit(:nombre, :email)
  end
end

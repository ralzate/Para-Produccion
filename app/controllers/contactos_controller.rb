# == Schema Information
#
# Table name: contactos
#
#  id         :integer          not null, primary key
#  email      :string
#  ip         :string
#  estado     :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ContactosController < ApplicationController

  def index
    @contactos = Contacto.search(params[:search]).page(params[:page]).per_page(5).order('id ASC')
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @contacto = Contacto.find(params[:id])
  end

  def new
    @contacto = Contacto.new
  end

  def edit
    @contacto = Contacto.find(params[:id])
  end

  def create
    @contacto = Contacto.new(contacto_params)
    if @contacto.save
      redirect_to root_path
    end
    #render :action => :new unless @contacto.save
  end

  def update
    @contacto = Contacto.find(params[:id])
    render :action => :edit unless @contacto.update_attributes(contacto_params)
  end


  def update
    @contacto = Contacto.find(params[:id])
    render :action => :edit unless @contacto.update_attributes(contacto_params)
  end

  def destroy
    @contacto = noticia.find(params[:id])
    @contacto.destroy
  end

  private
    def set_contacto
      @contacto = Contacto.find(params[:id])
    end

    def contacto_params
      params.require(:contacto).permit(:email, :nombre, :empresa, :ciudad, :telefono, :asunto, :mensaje, :ip)
    end
end

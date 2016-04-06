# == Schema Information
#
# Table name: noticias
#
#  id                  :integer          not null, primary key
#  titulo              :string
#  descripcion         :text
#  estado_noticia      :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

class NoticiasController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @noticias = Noticia.search(params[:search]).page(params[:page]).per_page(5).order('id ASC')
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @noticia = Noticia.find(params[:id])
  end

  def new
    @noticia = Noticia.new
  end

  def edit
    @noticia = Noticia.find(params[:id])
  end

  def create
    @noticia = Noticia.new(noticia_params)
    render :action => :new unless @noticia.save
  end

  def update
    @noticia = Noticia.find(params[:id])
    render :action => :edit unless @noticia.update_attributes(noticia_params)
  end


  def update
    @noticia = Noticia.find(params[:id])
    render :action => :edit unless @noticia.update_attributes(noticia_params)
  end

  def destroy
    @noticia = noticia.find(params[:id])
    @noticia.destroy
  end

  private
  def set_noticia
    @noticia = noticia.find(params[:id])
  end 
  
  def noticia_params
    params.require(:noticia).permit(:titulo, :descripcion, :estado_noticia, :imagen)
  end
end

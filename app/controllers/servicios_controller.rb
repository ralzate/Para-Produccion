# == Schema Information
#
# Table name: servicios
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  descripcion         :text
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  imagen_file_name    :string
#  imagen_content_type :string
#  imagen_file_size    :integer
#  imagen_updated_at   :datetime
#

class ServiciosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @servicios = Servicio.search(params[:search]).page(params[:page]).per_page(5).order('id ASC')
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @servicio = Servicio.find(params[:id])
  end

  def new
    @servicio = Servicio.new
  end

  def edit
    @servicio = Servicio.find(params[:id])
  end

  def create
    @servicio = Servicio.new(servicio_params)
    render :action => :new unless @servicio.save
  end

  def update
    @servicio = Servicio.find(params[:id])
    render :action => :edit unless @servicio.update_attributes(servicio_params)
  end


  def update
    @servicio = Servicio.find(params[:id])
    render :action => :edit unless @servicio.update_attributes(servicio_params)
  end

  def destroy
    @servicio = servicio.find(params[:id])
    @servicio.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_servicio
      @servicio = Servicio.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def servicio_params
      params.require(:servicio).permit(:tipo, :descripcion, :imagen)
    end
end

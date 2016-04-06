# == Schema Information
#
# Table name: experiencias
#
#  id                :integer          not null, primary key
#  nombre            :string
#  entidad           :string
#  contratante       :string
#  unidad_de_negocio :string
#  ciudad            :string
#  fecha_inicio      :date
#  fecha_terminacion :date
#  valor_contrato    :integer
#  numero_contrato   :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

class ExperienciasController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @experiencias = Experiencia.search(params[:search]).page(params[:page]).per_page(5).order('id ASC')
    respond_to do |format|
      format.html
      format.json
    end
  end


  def show
    @experiencia = Experiencia.find(params[:id])
  end

  def new
    @experiencia = Experiencia.new
  end

  def edit
    @experiencia = Experiencia.find(params[:id])
  end

  def create
    @experiencia = Experiencia.new(experiencia_params)
    render :action => :new unless @experiencia.save
  end

  def update
    @experiencia = Experiencia.find(params[:id])
    render :action => :edit unless @experiencia.update_attributes(experiencia_params)
  end


  def update
    @experiencia = Experiencia.find(params[:id])
    render :action => :edit unless @experiencia.update_attributes(experiencia_params)
  end

  def destroy
    @experiencia = experiencia.find(params[:id])
    @experiencia.destroy
  end

  private
    def set_experiencia
      @experiencia = experiencia.find(params[:id])
    end 

    def experiencia_params
      params.require(:experiencia).permit(:nombre, :entidad, :contratante, 
        :unidad_de_negocio, :ciudad, :fecha_inicio, :fecha_terminacion, 
        :valor_contrato, :numero_contrato, :estado_experiencia)
    end
end

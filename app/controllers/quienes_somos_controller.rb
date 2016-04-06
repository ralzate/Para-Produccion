# == Schema Information
#
# Table name: quienes_somos
#
#  id                   :integer          not null, primary key
#  mision               :text
#  vision               :text
#  politica_integral    :text
#  valores_corporativos :text
#  historia             :text
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class QuienesSomosController < ApplicationController
  before_action :authenticate_usuario!

  def index
    @quienes_somos = QuienSomos.all
    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    @quien_somos = QuienSomos.find(params[:id])
  end

  def new
    @quien_somos = QuienSomos.new
  end

  def edit
    @quien_somos = QuienSomos.find(params[:id])
  end

  def create
    @quien_somos = QuienSomos.new(quien_somos_params)
    render :action => :new unless @quien_somos.save
  end

  def update
    @quien_somos = QuienSomos.find(params[:id])
    render :action => :edit unless @quien_somos.update_attributes(quien_somos_params)
  end


  def update
    @quien_somos = QuienSomos.find(params[:id])
    render :action => :edit unless @quien_somos.update_attributes(quien_somos_params)
  end

  def destroy
    @quien_somos = quien_somos.find(params[:id])
    @quien_somos.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_quien_somos
      @quien_somos = QuienSomos.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def quien_somos_params
      params.require(:quien_somos).permit(:mision, :vision, :politica_integral, :valores_corporativos, :historia)
    end
end

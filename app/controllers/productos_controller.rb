# == Schema Information
#
# Table name: productos
#
#  id                  :integer          not null, primary key
#  nombre              :string
#  precio              :decimal(10, 2)
#  descripcion         :text
#  user_id             :integer
#  avatar_file_name    :string
#  avatar_content_type :string
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class ProductosController < ApplicationController
  before_action :user_exists
  before_action :set_producto, only: [:show, :edit, :update, :destroy]

  def index
    @productos = @user.productos
  end

  def show
  end

  def new
    @producto = Producto.new
  end

  def edit
  end

  def create
    @producto = @user.productos.build(producto_params)
    @producto.user = current_user

    respond_to do |format|
      if @producto.save
        format.html { redirect_to user_producto_path(@user,@producto), notice: 'Task was successfully created.' }
        format.json { render :show, status: :created, location: @producto }
      else
        format.html { render :new }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @producto.update(producto_params)
        format.html { redirect_to user_producto_path(@user,@producto), notice: 'Task was successfully updated.' }
        format.json { render :show, status: :ok, location: @producto }
      else
        format.html { render :edit }
        format.json { render json: @producto.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @producto.destroy
    respond_to do |format|     
      format.html { redirect_to user_productos_path(@producto), notice: 'Task was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_producto
      @producto = @usuario.productos.find_by(id: params[:id])
    end

  def producto_params
    params.require(:producto).permit(:nombre, :precio, :descripcion, :usuario, :avatar)
  end



  def usuario_exists
    @usuario = Usuario.find_by(id: params[:usuario_id])
    unless @usuario
      format.html { redirect_to productos_url, notice: 'User not found' }
    end 
  end
end

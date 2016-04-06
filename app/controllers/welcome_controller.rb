class WelcomeController < ApplicationController
  def index
  end

  def landing
  	render layout: "landing"
  end
  
  # Metodo para listar las noticias
  def comunicados
  	@todas_las_noticias1 = Noticia.where(:estado_noticia => "Publicada").last
  	@todas_las_noticias2 = Noticia.where(:estado_noticia => "Publicada").order(:created_at).offset(4).last

    @todas_las_noticias3 = Noticia.where(:estado_noticia => "Publicada").order(:created_at).offset(4).last
    @todas_las_noticias4 = Noticia.where(:estado_noticia => "Publicada").order(:created_at).offset(8).last

    @comunicados = Noticia.where('id <= ? AND id > ?', @todas_las_noticias1, @todas_las_noticias2).reverse
    @comunicados2 = Noticia.where('id <= ? AND id > ?', @todas_las_noticias3, @todas_las_noticias4).reverse

  end
 
  # Metodo que retorna el id de la noticia
  def mostrar_comunicado
    @noticia = Noticia.find(params[:noticia])
  end
 
  # Metodo para listar la experiencias
  def experiencias
    @todas_las_experiencias1 = Experiencia.last
    @todas_las_experiencias2 = Experiencia.order(:created_at).offset(4).last

    @todos_los_servicios3 = Experiencia.order(:created_at).offset(4).last
    @todas_las_experiencias4 = Experiencia.order(:created_at).offset(8).last

    @experiencias = Experiencia.where('id <= ? AND id > ?', @todas_las_experiencias1, @todas_las_experiencias2).reverse
    @experiencias2 = Experiencia.where('id <= ? AND id > ?', @todas_las_experiencias3, @todas_las_experiencias4).reverse
  end
  
  # Metodo para listar los servicios
  def servicios
    @todos_los_servicios = Servicio.all
  end

  # Metodo para mostrar la información de la empresa
  def quienes_somos
    @quienes_somos = QuienSomos.all
  end

  # Metodo para registrar la informacion de contacto
  def contacto

    @contacto = Contacto.new(params[:contacto])
    @contacto.request = request
    if @contacto.deliver
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
    
  end



end



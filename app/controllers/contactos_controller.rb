# coding: utf-8
class ContactosController < InheritedResources::Base
  before_filter :authenticate_admin!, except: [:new, :create]

  def create
    @contacto = Contacto.new(params[:contacto])

    create! do |success, failure|
      success.html do
        ContactoMailer.confirmacion_de_contacto(@contacto).deliver
        ContactoMailer.notificacion_de_contacto(@contacto).deliver

        flash[:notice] = "Tu mensaje fue enviado con éxito"
        redirect_to new_contacto_path
      end
      failure.html do
        flash[:notice] = "No se envió el mensaje, revisa los campos y vuelve a intentar"
        render :action => "new"
      end
    end
  end
end

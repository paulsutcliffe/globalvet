class ContactoMailer < ActionMailer::Base
  default from: "contacto@globalvetgroup.com"

  def confirmacion_de_contacto(contacto)
    @contacto = contacto
    mail(:to => "contacto@globalvetgroup.com", :subject => "Mensaje desde la web")
  end

  def notificacion_de_contacto(contacto)
    @contacto = contacto
    mail(:to => contacto.email, :reply_to => contacto.email, :subject => "Mensaje enviado Global Vet")
  end
end

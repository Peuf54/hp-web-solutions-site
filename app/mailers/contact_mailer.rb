class ContactMailer < ApplicationMailer
    default from: 'hugo@hpwebsolutions.fr'
    
    def send_contact_email(contact)
        @contact = contact
        mail(to: 'hugo@hpwebsolutions.fr', subject: 'Nouvelle demande de contact')
    end

    def send_contact_confirmation_email(contact)
        @contact = contact
        mail(to: 'contact@hpwebsolutions.fr', subject: 'Votre demande de contact')
    end
end

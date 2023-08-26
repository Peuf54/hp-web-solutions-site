class ContactMailer < ApplicationMailer
    default from: 'hugo@hpwebsolutions.fr'
    
    def send_contact_email(contact)
        @contact = contact
        mail(to: 'contact@hpwebsolutions.fr', subject: 'Nouvelle demande de contact')
    end

    def send_contact_confirmation_email(contact)
        @contact = contact
        mail(to: 'mecougiffadde-5335@yopmail.com', subject: 'Votre demande de contact')
    end
end

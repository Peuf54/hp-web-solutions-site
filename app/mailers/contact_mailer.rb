class ContactMailer < ApplicationMailer
    default from: 'contact@hpwebsolutions.fr'
    
    def send_contact_email(contact)
        @contact = contact
        attachments.inline['logo-min.png'] = File.read(Rails.root.join('app', 'assets', 'images', 'logo-min.png'))
        mail(to: 'contact@hpwebsolutions.fr', subject: 'Nouvelle demande de contact')
    end

    def send_contact_confirmation_email(contact)
        @contact = contact
        attachments.inline['logo-min.png'] = File.read(Rails.root.join('app', 'assets', 'images', 'logo-min.png'))
        mail(to: 'test-vxltmb1ze@srv1.mail-tester.com', subject: 'Votre demande de contact')
    end
end

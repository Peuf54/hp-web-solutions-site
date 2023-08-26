class ContactsController < ApplicationController
    def new
    end
    
    def create
        @contact = Contact.new(contact_params)
        if @contact.save
            ContactMailer.send_contact_email(@contact).deliver_now
            ContactMailer.send_contact_confirmation_email(@contact).deliver_now
            redirect_to root_path, notice: 'Votre message a été envoyé.'
        else
            render :new
        end
    end

    private

    def contact_params
        params.permit(:name, :email, :phone, :project_description)
    end
end

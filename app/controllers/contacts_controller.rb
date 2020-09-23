class ContactsController < ApplicationController

    def new
        @contact = Contact.new
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.valid?(:create)
            if @contact.save
                ContactMailer.notify_admin(@contact).deliver_now
                ContactMailer.confirm_for_visitor(@contact).deliver_now
                redirect_to sended_contacts_path
            else
                render "contacts/new"
            end
        else
            render "contacts/new"
        end
    end

    def sended
    end

    private
    def contact_params
        params.require(:contact).permit(
            :name, :email, :content
        )
    end

end

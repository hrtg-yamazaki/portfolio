class ContactsController < ApplicationController

    before_action :redirect_to_root, only: [:create, :sended]
    before_action :redirect_to_new, only: [:sended]

    def new
        @contact = Contact.new
        session[:from_new] = "True"
    end

    def create
        @contact = Contact.new(contact_params)
        if @contact.valid?(:create)
            if @contact.save
                ContactMailer.notify_admin(@contact).deliver_now
                ContactMailer.confirm_for_visitor(@contact).deliver_now
                session[:from_create] = "True"
                redirect_to sended_contacts_path
            else
                render "contacts/new"
            end
        else
            render "contacts/new"
        end
    end

    def sended
        session.delete(:from_new)
        session.delete(:from_create)
    end


    private

    def contact_params
        params.require(:contact).permit(
            :name, :email, :content
        )
    end

    def redirect_to_root
        if session[:from_new] != "True"
            redirect_to root_path
        end
    end

    def redirect_to_new
        if session[:from_create] != "True"
            redirect_to new_contact_path
        end
    end

end

class ContactMailer < ApplicationMailer

    def notify_admin(contact)
        @contact = contact

        mail(
            from: ENV["EMAIL_ADDRESS_CONTACT"],
            to: ENV["EMAIL_ADDRESS"],
            subject: "お問い合わせを承りました"
        )
    end

end

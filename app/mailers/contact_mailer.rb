class ContactMailer < ApplicationMailer

    def notify_admin(contact)
        @contact = contact

        mail(
            from: ENV["EMAIL_ADDRESS_CONTACT"],
            to: ENV["EMAIL_ADDRESS"],
            subject: "お問い合わせを承りました"
        )
    end

    def confirm_for_visitor(contact)
        @contact = contact
        mail(
            from: ENV["EMAIL_ADDRESS_CONTACT"],
            to: @contact.email,
            subject: "(hrtg-ymzk.com)お問い合わせ頂きありがとうございます。"
        )
    end

end

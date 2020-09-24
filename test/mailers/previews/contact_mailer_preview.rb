# Preview all emails at http://localhost:3000/rails/mailers/contact_mailer
class ContactMailerPreview < ActionMailer::Preview

    def notify
        contact = Contact.new(
            name: "テストユーザー",
            email: "test@test.com",
            content: "こんにちは"
        )
        ContactMailer.notify_admin(contact)
    end

    def confirm
        contact = Contact.new(
            name: "テストユーザー",
            email: "test@test.com",
            content: "こんにちは"
        )
        ContactMailer.confirm_for_visitor(contact)
    end

end

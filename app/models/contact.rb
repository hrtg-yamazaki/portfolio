class Contact < ApplicationRecord

    VALID_EMAIL_REGIX    = /\A[^@\s]+@[^@\s]+\z/

    validates :email, presence: { message: "メールアドレス を入力してください" }, on: :create, format: { with: VALID_EMAIL_REGIX, message: "フォーマットが不適切です"}

end

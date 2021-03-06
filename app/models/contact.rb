class Contact < ApplicationRecord

    VALID_EMAIL_REGIX    = /\A[^@\s]+@[^@\s]+\z/

    validates :name, presence: { message: "お名前 を入力してください" }, on: :create
    validates :email, presence: { message: "必須項目です" }, on: :create, format: { with: VALID_EMAIL_REGIX, message: "フォーマットが不適切です"}
    validates :content, presence: { message: "入力してください" }, on: :create

end

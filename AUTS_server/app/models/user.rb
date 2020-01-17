class User < ApplicationRecord
  PASSWORD_FORMAT = /\A(?=.{8,25})(?=.*\d)(?=.*[a-z])(?=.*[A-Z])/x

  validates :email, presence: true, format: {with: URI::MailTo::EMAIL_REGEXP }
  validates :login, presence: true, length: { minimum: 6}
  validates :password, presence: true, format: { with: PASSWORD_FORMAT},confirmation: true, on: :create
  validates :password, allow_nil: true, format: { with: PASSWORD_FORMAT }, confirmation: true, on: :update
  has_secure_password
end

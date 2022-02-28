class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
    # validates :email, confirmation: true, uniqueness: true, 
    # format: { with: /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/ , message: 'format is not correct'}
    # validates :email_confirmation, presence: true

    validates :password, 
    # presence: true, length: { minimum: 8 },
    #  confirmation: true, unless: -> { password.blank? }, 
     format: { with: /(?=.*[a-z])(?=.*[A-Z])(?=.*[0-9])/,
        message: "must have at least one lowercase letter, uppercase letter and number" }
    # validates :password_confirmation, presence: true

    # validates :name, length: { in: 2..10 }, 
    # format: {with:  /\A[a-zA-Z][A-Za-z0-9._%+-]+\z/, message: "must start with letter"}

    has_one_attached :picture
end

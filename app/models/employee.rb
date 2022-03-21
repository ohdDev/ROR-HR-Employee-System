class Employee < ApplicationRecord
  
    belongs_to :team, optional: true
    has_one :division, dependent: :nullify


    validates :email, presence: true, confirmation: true, uniqueness: true
    # validates :email_confirmation, presence: true

    validates :name,presence: true, format: { with: /\A[a-zA-Z]+\z/,
        message: "only allows letters" }
    
    validates :job, presence: true

    # validates :job,presence: true, format: { with: /\A[a-zA-Z ]+\z/,
    #     message: "only allows letters" }

    validates :salary,presence: true, format: { with: /\A[0-9.]+\z/,
        message: "only allows numbers" }

    # validates :employment_status ,presence: true

    

    
end

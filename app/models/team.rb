class Team < ApplicationRecord
    has_many :employees, dependent: :nullify
    has_many :targets, dependent: :nullify
    belongs_to :division, optional: true

    validates :name,length: { in: 3..20 },presence: true, format: { with: /\A[a-zA-Z0-9-]+\z/,
        message: "only allows letters, numbers and -" }

    validates :description,length: { maximum: 50 }

    validates :leader_id, presence: true,uniqueness: true

    validates :employees, presence: true



end

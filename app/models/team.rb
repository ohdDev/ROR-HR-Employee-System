class Team < ApplicationRecord
    has_many :employees, dependent: :nullify
    has_many :targets, dependent: :nullify
    belongs_to :division, optional: true
end

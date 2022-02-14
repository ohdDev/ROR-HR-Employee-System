class Employee < ApplicationRecord
    belongs_to :team, optional: true
    has_one :division, dependent: :nullify
end

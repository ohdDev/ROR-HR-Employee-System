class Division < ApplicationRecord
    belongs_to :employee, optional: true
    has_many :teams, dependent: :destroy
    accepts_nested_attributes_for :teams
    # after_save :update_teams
    # serialize :teams

    # def update_teams
    #     teams.each do |team|
    #         team.update(:id => team.id)
    #     end
    # end

    validates :name,length: { in: 3..20 },presence: true, format: { with: /\A[a-zA-Z0-9-]+\z/,
        message: "only allows letters, numbers and -" }

    validates :description,length: { maximum: 50 }

    validates :employee_id, presence: true,uniqueness: true

    # validates :teams, presence: true


end
 
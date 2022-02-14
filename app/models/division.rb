class Division < ApplicationRecord
    belongs_to :employee, optional: true
    has_many :teams, dependent: :destroy
    # after_save :update_teams
    # serialize :teams

    # def update_teams
    #     teams.each do |team|
    #         team.update(:id => team.id)
    #     end
    # end


end

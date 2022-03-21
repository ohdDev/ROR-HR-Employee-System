class Target < ApplicationRecord
    belongs_to :team, optional: true

    validates :title,length: { in: 3..20 },presence: true, format: { with: /\A[a-zA-Z0-9-]+\z/,
        message: "only allows letters, numbers and -" }

    validates :description,length: { maximum: 50 }

    validates_comparison_of :start_date, less_than: :finish_date

    # def start_must_be_before_finish_time
    #     errors.add(:start_time, "must be before finish time") unless
    #         start_time < finish_time
    # end 

end

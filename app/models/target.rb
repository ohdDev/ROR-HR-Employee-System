class Target < ApplicationRecord
    belongs_to :team, optional: true
end

class Classroom < ApplicationRecord
    has_one :schedule, dependent: :destroy
end

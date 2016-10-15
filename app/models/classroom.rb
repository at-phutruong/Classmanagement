class Classroom < ApplicationRecord
    has_one :schedule, dependent: :destroy
    validates :capacity, :numericality => { :greater_than => 20, :less_than_or_equal_to => 300}
    validates :name, uniqueness: true
end

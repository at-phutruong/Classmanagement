class Teacher < ApplicationRecord
  has_one :schedule, dependent: :destroy
end

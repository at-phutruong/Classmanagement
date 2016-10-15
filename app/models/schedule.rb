class Schedule < ApplicationRecord
  belongs_to :classroom
  belongs_to :teacher
  validate :finish_time_more_than_start_time

  private

    def finish_time_more_than_start_time
      start_time = start.split(":")
      finish_time = finish.split(":")
      if finish_time[0].to_i < start_time[0].to_i
        errors.add(:finish_time, 'should be more than start time')
      elsif finish_time[0].to_i == start_time[0].to_i
        errors.add(:finish_time, 'should be more than start time')
      elsif finish_time[0].to_i == start_time[0].to_i && finish_time[1].to_i < start_time[1].to_i
        errors.add(:finish_time, 'should be more than start time')
      end
    end
end

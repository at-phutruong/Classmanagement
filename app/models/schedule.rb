class Schedule < ApplicationRecord
  belongs_to :classroom
  belongs_to :user
  validate :finish_time_more_than_start_time
  validate :already_schedule

  private

    def already_schedule
      schedules = Schedule.all
      # binding.pry
      start_time = start.split(":")
      finish_time = finish.split(":")
      schedules.each do |schedule|
        schedule_start_time = schedule.start.split(":")
        schedule_finish_time = schedule.finish.split(":")
        # binding.pry
        errors.add(:hour, 'has already taken') if classroom_id == schedule.classroom_id && date == schedule.date && ((schedule_start_time[0].to_i...schedule_finish_time[0].to_i) === (start_time[0].to_i)||(schedule_start_time[0].to_i...schedule_finish_time[0].to_i) === (finish_time[0].to_i))
      end
    end

    def finish_time_more_than_start_time
      start_time = start.split(":")
      finish_time = finish.split(":")
      if finish_time[0].to_i < start_time[0].to_i
        errors.add(:finish_time, 'should be more than start time')
      elsif finish_time[0].to_i == start_time[0].to_i && finish_time[1].to_i == start_time[1].to_i
        errors.add(:finish_time, 'should be more than start time')
        binding.pry
      elsif finish_time[0].to_i == start_time[0].to_i && finish_time[1].to_i < start_time[1].to_i
        errors.add(:finish_time, 'should be more than start time')
      end
    end
end

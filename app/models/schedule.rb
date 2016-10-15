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
      start_time = (start_time[0] + start_time[1]).to_i
      finish_time = finish.split(":")
      finish_time = (finish_time[0] + finish_time[1]).to_i
      schedules.each do |schedule|
        schedule_start_time = schedule.start.split(":")
        schedule_start_time = (schedule_start_time[0] + schedule_start_time[1]).to_i
        schedule_finish_time = schedule.finish.split(":")
        schedule_finish_time = (schedule_finish_time[0] + schedule_finish_time[1]).to_i
        # binding.pry
        if classroom_id == schedule.classroom_id && date == schedule.date && ((schedule_start_time...schedule_finish_time) === (start_time)||(schedule_start_time + 1...schedule_finish_time) === (finish_time))
          errors.add(:hour, 'has already taken')
        end
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

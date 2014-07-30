class Commitment < ActiveRecord::Base
  belongs_to :user

  NOW = DateTime.now.in_time_zone
  TOMORROW = (NOW+1.day).in_time_zone
  scope :for_today, -> { where(start_at: (NOW.beginning_of_day..NOW.end_of_day)).order(:start_at) }
  scope :for_tomorrow, -> { where(start_at: (NOW.end_of_day..TOMORROW.end_of_day)).order(:start_at) }
  scope :for_future, -> {where("start_at >= ?", TOMORROW.beginning_of_day).order(:start_at)}

  def self.for_date(date)
  	(date == "today") ? Commitment.for_today : ((date == "tomorrow") ? Commitment.for_tomorrow : Commitment.for_future)
  end


end

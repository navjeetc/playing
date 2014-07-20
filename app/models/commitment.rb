class Commitment < ActiveRecord::Base
  belongs_to :user

  scope :for_today, -> { where(start_at: Date.today) }
  scope :for_tomorrow, -> { where(start_at: Date.today + 1.day) }
  scope :for_future, -> {where("start_at >= ?", Date.today)}

  def self.for_date(date)
  	(date == "today") ? Commitment.for_today : ((date == "tomorrow") ? Commitment.for_tomorrow : Commitment.for_future)
  end


end

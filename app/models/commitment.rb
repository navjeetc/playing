class Commitment < ActiveRecord::Base
  belongs_to :user

  scope :for_today, -> { where(start_at: (Date.today..(Date.today+1.day))).order(:start_at) }
  scope :for_tomorrow, -> { where(start_at: ((Date.today+1.day)..(Date.today + 2.day))).order(:start_at) }
  scope :for_future, -> {where("start_at >= ?", Date.today).order(:start_at)}

  def self.for_date(date)
  	(date == "today") ? Commitment.for_today : ((date == "tomorrow") ? Commitment.for_tomorrow : Commitment.for_future)
  end


end

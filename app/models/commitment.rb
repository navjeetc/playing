class Commitment < ActiveRecord::Base
  belongs_to :user

  scope :for_today, -> { where(start_at: Date.today) }
  scope :for_tomorrow, -> { where(start_at: Date.today + 1.day) }
end

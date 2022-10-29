class Shift < ApplicationRecord
  belongs_to :user
  delegate :organization, to: :user

  SECONDS_IN_HOUR = 3600

  def shift_length
    (finish - start - break_length) / SECONDS_IN_HOUR
  end

  def shift_cost
    organization.hourly_rate * shift_length
  end
end

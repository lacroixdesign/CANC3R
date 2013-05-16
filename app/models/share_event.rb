class ShareEvent < ActiveRecord::Base
  attr_accessible :type

  after_create :expire_cache

  def self.current_count
    this_week = Time.zone.now.beginning_of_week(:sunday)
    where("created_at >= ?", this_week).count
  end

  def self.percent_to_goal
    count = self.current_count
    goal  = self.goal
    if count.blank? || count == 0
      0
    elsif count >= goal
      100
    else
      count / goal * 100
    end
  end

private

  def self.goal
    @goal ||= 200.0
  end

  def expire_cache
    Rails.cache.delete "home"
  end

end

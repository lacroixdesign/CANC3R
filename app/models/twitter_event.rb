class TwitterEvent < ShareEvent

private

  def self.goal
    Setting.twitter_goal.to_f
  end

end

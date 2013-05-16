class FacebookEvent < ShareEvent

private

  def self.goal
    Setting.facebook_goal.to_f
  end

end

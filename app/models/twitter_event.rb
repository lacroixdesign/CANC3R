class TwitterEvent < ShareEvent

private

  def self.goal
    @goal ||= 150.0
  end

end

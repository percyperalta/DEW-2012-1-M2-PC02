class Tweet < ActiveRecord::Base

Twitter.configure do |config|
      config.consumer_key = 'yUD9t1j3gf0qpUlWh8vVQ'
      config.consumer_secret = 'DU6Y0sSn9kSDNoH2jmqDXVnnZg6AE3c5jzyZ9MII'
      config.oauth_token = '729623707-bzhlfZo2ZLQk2ZmOjsXDjKLXe4eo7jI0BhTDM2JH'
      config.oauth_token_secret = 'Ac5Ey4RovZhJ9mWThr9thi7O6ptMvxbLAx3BK6UzjAU'
end    

  def read_text
    return "sin status" if self.status.blank?    
    Twitter.status(self.status).text
  end

  def read_message
    return "sin user" if self.user.blank?
    Twitter.user_timeline(self.user).first.text
  end
  
  def update_status
	/return "sin update" if self.message.blank?/
	Twitter.update(self.message)
  end
   
end

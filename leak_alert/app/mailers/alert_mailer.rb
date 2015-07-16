class AlertMailer < ActionMailer::Base
  default from: "sfleakalert@statefarm.com"
  
  def alert_email(alert)
    #@user = user
    #mail(to: @user.email, subject: "Water Alert!")
    mail(to: "1aaronsnowden@gmail.com", subject: alert.message, body: "alert from your sensor: "+alert.message+"\npublished at: "+alert.published_at.to_s)

    self.delivery_method = :smtp
    self.default_url_options = { host:'localhost', port: '3000' }
    self.perform_deliveries = true
    self.raise_delivery_errors = true
    self.default :charset => "utf-8"
    self.smtp_settings = {
        :address => "smtp.gmail.com",
        :port => 587,
        :domain => 'localhost:3000',
        :user_name => "sfleakalert@gmail.com",
        :password => "leakalert",
        :authentication => :plain,
        :enable_starttls_auto => true
    }

  end

  def deliver_now
  end
end

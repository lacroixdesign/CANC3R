class NewsletterSubscribe
  include ActiveAttr::Model

  attr_accessor :email
  attr_reader :status, :result

  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i, message: "Please provide a valid email address" }

  def submit
    if self.valid?
      account.throws_exceptions = false
      result = account.list_subscribe id: list_id, email_address: self.email
      if result == true
        @result = { message: "Form was successfully submitted.", success: true }
        @status = 200
      else
        @result = { message: result["error"], errors: [result["code"]] }
        @status = 422
      end
    else
      @result = { message: "Validation Failed", errors: [self.errors.messages] }
      @status = 422
    end
  end

private

  def key
    @key ||= ENV['MAILCHIMP_API_KEY']
  end

  def list_id
    @form_id ||= ENV['MAILCHIMP_LIST_ID']
  end

  def account
    @account ||= Gibbon.new(key)
  end

end

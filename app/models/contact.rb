class Contact < MailForm::Base
  attribute :name, validate: true, presence: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :category, validate: true, inclusion: { in: %w(Label Booking Autre), message: "%{value} is not valid" }
  attribute :message, validate: true

  def headers
    {
      to: "antoine.delprat.pro@gmail.com",
      subject: "Contact CCR",
      from: "admin@ccr.com",
      reply_to: %("#{name}" <#{email}>)
    }
  end
end

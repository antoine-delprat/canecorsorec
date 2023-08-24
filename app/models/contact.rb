class Contact < MailForm::Base
  attribute :name, validate: true, presence: true
  attribute :email, validate: /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  attribute :category, validate: true, inclusion: { in: %w(Label Booking Autre), message: "%{value} is not valid" }
  attribute :message, validate: true

  def headers
    {
      to: "antoine.delprat.pro@gmail.com",
      subject: "Formulaire Contact CCR - Sujet #{category}",
      from: "antoine.delprat.pro@gmail.com",
      reply_to: %("#{name}" <#{email}>)
    }
  end
end

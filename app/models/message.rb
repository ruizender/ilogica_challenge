class Message < ApplicationRecord
  require 'sendgrid-ruby'
  include SendGrid
  validates :full_name, :email, :description, presence: true

  def message_client   
    from = SendGrid::Email.new(email: 'ruiz.valera@gmail.com')
    to = SendGrid::Email.new(email: 'ruiz.valera@gmail.com')
    subject = "Customer Message #{self.full_name}"
    content = SendGrid::Content.new(type: 'text/plain', value: "#{self.description}. Contacto telefonico #{self.phone}. Responder correo a #{self.email}")
    mail = SendGrid::Mail.new(from, subject, to, content)
    sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
    response = sg.client.mail._('send').post(request_body: mail.to_json)
    puts response.status_code
    puts response.body
    puts response.headers
  end
end

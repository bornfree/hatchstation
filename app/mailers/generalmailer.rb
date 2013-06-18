class Generalmailer < ActionMailer::Base
  default from: "catchall@startupsourcing.com"
  def quote(name, email, description)
    @name = name
    @email = email
    @description = description
    mail(:to => "harsha@startupsourcing.com", :subject => "New request for quote recieved")
  end
end

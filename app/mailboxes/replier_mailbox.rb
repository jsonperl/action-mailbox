class ReplierMailbox < ApplicationMailbox
  # Callbacks specify prerequisites to processing
  before_processing :do_some_stuff

  def process
    send_a_message(mail.from,
      "Your original message was:\n=====\n\n#{mail.content}")
  end

  private

  def do_some_stuff
    # Looks similar to controller filters
  end

  def send_a_message(to, body)
    ActionMailer::Base.mail(
      from: "sayhello@jsonperl.com",
      to: to,
      subject: "Your Reply!",
      body: body).deliver
  end
end

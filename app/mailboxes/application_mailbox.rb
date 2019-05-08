class ApplicationMailbox < ActionMailbox::Base
  # Let's route mail sent to sayhello@domain to the replier mailbox
  routing /^sayhello@/i => :replier
end

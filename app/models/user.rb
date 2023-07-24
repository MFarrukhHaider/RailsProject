class User < ApplicationRecord
    after_create :send_welcome_email


    private
    def send_welcome_email
        SendEmailsJob.perform_now(self)
    end
end

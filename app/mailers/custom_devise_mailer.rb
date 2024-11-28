class CustomDeviseMailer < ApplicationMailer

    def reset_password_instructions(record, token, opts = {})
        UserMailer.reset_password_instructions(record, token).deliver_now
    end

end

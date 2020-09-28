class PassengerMailer < ApplicationMailer
    default from: 'passengermailertest@email.com'
    def welcome_email(passenger)
        @passenger = passenger
        mail(to: @passenger.email, subject: 'Thank you for your custom')
    end
end

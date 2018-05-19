class TextyController < ApplicationController
  def index
    @phone = Phone.new
  end

  def send_text
    @phone = Phone.new(phone_params)

    @phone.send_sms(@phone.clean_number)
  end

  private

  def incident_params
    params.require(:incident).permit(:name, :height, :age, :info, :user_id)
  end

  def phone_params
    params.require(:phone).permit(:number)
  end
end
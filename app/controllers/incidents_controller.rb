class IncidentsController < ApplicationController
  before_action :find_incident, except: %i[new create]

  def index
    @incidents = Incident.all
  end

  def show

  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = User.first.incidents.new(incident_params)

    if @incident.save
      send_text

      redirect_to @incident
    else
      render :new
    end
  end

  def destroy
    @incident.destroy
  end

  def send_text
    @phone = Phone.new(number: User.first.phone)

    @phone.send_sms(current_user, @incident)
  end

  private

  def find_incident
    @incident = Incident.find(params[:id])
  end

  def incident_params
    params.require(:incident).permit(:name, :height, :age, :info, :user_id)
  end
end
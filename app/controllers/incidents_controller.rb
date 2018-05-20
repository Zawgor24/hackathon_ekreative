class IncidentsController < ApplicationController
  before_action :find_incident, except: %i[new create index]

  def index
    @incidents = Incident.all.order(updated_at: :desc)
  end

  def show
  end

  def new
    @incident = Incident.new
  end

  def create
    @incident = current_user.incidents.new(incident_params)

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

  def resolved

  end

  private

  def find_incident
    @incident = Incident.find(params[:id])
  end

  def incident_params
    params.require(:incident).permit(:name, :height, :age, :info, :user_id, :avatar)
  end
end

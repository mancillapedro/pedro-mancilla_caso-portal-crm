class TalksController < ApplicationController
  before_action :set_lead, only: [:new, :create]

  def new
    @talk = Talk.new
  end

  def create
    @talk = Talk.new(talk_params)
    if @talk.save && LeadTalk.create(lead: @lead, user: current_user, talk: @talk)
      redirect_to lead_path(@lead)
    else
      render :new
    end
  end

  private

  def talk_params
    params.require(:talk).permit(:message)
  end

  def set_lead
    @lead = Lead.find(params[:lead_id])
  end
end

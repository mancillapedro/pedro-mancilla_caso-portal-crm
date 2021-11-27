class LeadsController < ApplicationController
  before_action :set_lead, only: %i[show edit update destroy]

  def index
    @leads = Lead.all
  end

  def show; end

  def new
    @lead = Lead.new
  end

  def create
    @lead = Lead.new(lead_params)
    @lead.user = current_user
    if @lead.save
      redirect_to leads_path(@lead)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @lead.update(lead_params)
      redirect_to lead_path(@lead)
    else
      render :edit
    end
  end

  def destroy
    @lead.destroy
    redirect_to leads_path
  end

  private

  def lead_params
    params.require(:lead).permit(:name, :surname, :telephone, :email, :status)
  end

  def set_lead
    @lead = Lead.find(params[:id])
  end
end

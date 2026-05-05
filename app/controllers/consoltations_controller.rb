class ConsoltationsController < ApplicationController
  def create
    @consoltation = Consoltation.new(consoltation_params)
    if @consoltation.save
      ContactMailer.with(
        first_name:   @consoltation.first_name,
        last_name:    @consoltation.last_name,
        address:      @consoltation.address,
        city:         @consoltation.city,
        state:        @consoltation.state,
        zip_code:     @consoltation.zip_code,
        email:        @consoltation.email,
        phone:        @consoltation.phone,
        project_type: @consoltation.project_type,
        has_plans:    @consoltation.has_plans,
        referral:     @consoltation.referral
      ).submission_email.deliver_later
      redirect_to root_path, notice: "Email sent!"
    else
      render :new, status: :unprocessable_entity
    end
  end

  def new
    @consoltation = Consoltation.new
  end

  private
   def consoltation_params
    params.require(:consoltation).permit(
      :first_name,
      :last_name,
      :address,
      :city,
      :state,
      :zip_code,
      :email,
      :phone,
      :project_type,
      :has_plans,
      :referral
      )end
end

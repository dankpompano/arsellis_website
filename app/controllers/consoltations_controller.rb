class ConsoltationsController < ApplicationController
  def create
    @consoltation = Consoltation.new(consoltation_params)

    if @consoltation.save
      redirect_to consoltations_path
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

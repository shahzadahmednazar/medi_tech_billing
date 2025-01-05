class ConsultationsController < ApplicationController
  def schedule
    Rails.logger.info("Received parameters: #{params.inspect}")
    form_data = {
      name: params[:name],
      business_name: params[:business_name],
      email: params[:email],
      phone: params[:phone],
      monthly_billing: params[:monthly_billing],
      number_of_providers: params[:number_of_providers],
      total_ar: params[:total_ar],
      message: params[:message]
    }

    ConsultationMailer.schedule_consultation(form_data).deliver_now
    redirect_to root_path, notice: "Your consultation request has been sent!"
  end
end

class ConsultationMailer < ApplicationMailer
  default from: "raoazeemm@gmail.com"

  def schedule_consultation(form_data)
    @form_data = form_data
    mail(to: "drshahzadmunawarmunawar@gmail.com", subject: "New Consultation Request") do |format|
      format.html { render "schedule_consultation" }
    end
  end
end

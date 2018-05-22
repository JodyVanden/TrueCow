class InformationController < ApplicationController

  def initialise
    @information = Information.new
  end

  def new
    @information = Information.new
  end

  def create
    @information = Information.new(params[:information])
    @information.save
    if @information.save
      flash[:notice] = "Information has been saved. Thank you!"
      redirect_to [ @project, @information ]
    else
      flash[:alert] = "Information was not saved. Could you try again please?"
      render "new"
    end
    # Will raise ActiveModel::ForbiddenAttributesError
  end

  private
  def information_params
    # *Strong params*: You need to *whitelist* what can be updated by the user
    # Never trust user data!
    params.require(:information).permit(:description, :interested, :email)
  end
end

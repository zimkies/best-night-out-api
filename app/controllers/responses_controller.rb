class ResponsesController < ApplicationController
  def create
    render json: current_user.responses.create(create_params)
  end

  private

  def current_user
    p "#{request.headers['Authorization']}"
    return unless request.headers['Authorization']
    @user = User.find_or_create_by!(auth_token: request.headers['Authorization'])
  end


  def create_params
    params.require(:response).permit(:result, :challenge_id)
  end
end

class AuthenticationController < ApplicationController
  def login
    begin
      @user = User.find_by_email(params[:email])
      if @user&.authenticate(params[:password])
        token = JsonWebToken.encode(user_id: @user.id)
        time = Time.now + 24.hours.to_i
        render json: { token: token, expiration: time.strftime("%m-%d-%Y %H:%M"),
                        id: @user.id }, status: :ok
      else
        render json: { error: 'Dados inválidos' }, status: :unauthorized
      end
    rescue ActiveRecord::RecordNotFound => e
      render json: { error: 'Dados inválidos' }, status: :unauthorized
    end
  end

  def create_user
    @user = User.new(user_params)

    if @user.save
      render json: @user, status: :created, location: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

class ApisController < ActionController::API
  def info
    render json: Myki.select(:number, :user_id).where(id: 1)
  end
end
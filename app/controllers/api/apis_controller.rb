class ApisController < ActionController::API
  def test
    render json: Myki.select(:number, :user_id).where(id: 1)
  end
end
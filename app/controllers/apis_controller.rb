class ApisController < ActionController::API
  def info
    id = params[:id]
    prefix = params[:p]
    p "Value of prefix: #{prefix}"
    if prefix == 'P'
      render json: Passport.select(:number, :user_id).where(id: id)
    elsif prefix == 'M'
      render json: Myki.select(:number, :user_id).where(id: id)
    end
  end
end
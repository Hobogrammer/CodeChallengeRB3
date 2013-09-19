module SessionsHelper
  def signed_in?
    !current_user.nil?
  end

  def signed_in_user
    unless signed_in?
      redirect_to root_path, notice: "You must be logged in to do view this page. Please sign in."
    end
  end

  def current_user
    @current_user = User.first
  end

  def current_user=(user)
    @current_user = user
  end

  def current_user?(user)
    user == current_user
  end
end

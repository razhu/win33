class AdvertisePolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @advertise = model
  end

  def index?
    @current_user.admin?
  end

  def show?
    @current_user.admin? || @current_user == @advertise
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    return false if @current_user == @advertise
    @current_user.admin?
  end
end

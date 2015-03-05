class FeaturePolicy
  attr_reader :current_user, :model

  def initialize(current_user, model)
    @current_user = current_user
    @feature = model
  end

  def index?
    @current_user.admin?
  end

  def show?
    @current_user.admin? || @current_user == @feature
  end

  def update?
    @current_user.admin?
  end

  def destroy?
    return false if @current_user == @feature
    @current_user.admin?
  end
end

module ActiveAdmin
  class PagePolicy < ApplicationPolicy
    class Scope < Struct.new(:user, :scope)
      def resolve
        scope
      end
    end
    def index?
      true
    end

    def show?
      User.roles[user.role] >= User.roles['admin']
    end
  end
end
class CarPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      # user.nil? scope.all
      if user.nil? || user.admin
        scope.all
      else
        scope.where.not(user: user)
      end
    end
  end

  def create?
    true
  end

  def my_location?
    Car.all
  end

  def my_booking?
    Booking.all
    Car.all
  end

  def show?
    true
  end

  def update?
    record.user == user || user.admin unless user.nil?
  end

  def destroy?
    record.user == user || user.admin unless user.nil?
  end
end

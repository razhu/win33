class VisitorsController < ApplicationController
  def index
    @advertises = Advertise.order('created_at DESC').limit(10)
    @requests = Request.order('created_at DESC').limit(10)
  end
end

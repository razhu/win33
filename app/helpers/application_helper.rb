module ApplicationHelper
  def friendly_date(date)
    date.strftime("%B %e")
  end
end

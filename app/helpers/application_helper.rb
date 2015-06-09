module ApplicationHelper

  def datetime_format(date)
    date.strftime("%A, %B %d")
  end

end

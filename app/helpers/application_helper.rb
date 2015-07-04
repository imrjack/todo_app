module ApplicationHelper

  def date_format(date)
    date.strftime("%A, %B %d")
  end
  def time_format(time)
    time.strftime('%I:%M %p')
  end
end

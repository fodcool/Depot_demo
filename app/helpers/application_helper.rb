module ApplicationHelper
  def format(datetime)
    datetime.strftime("%Y-%m-%d %H:%M:%S")
  end
end

module ApplicationHelper
  
  def status_color(number)
    number = number.to_i
    number <= 60 ? :green : ( number <= 130? :yellow : :red )
  end
end
module ApplicationHelper

  def status_color(number)
    number = number.to_i
    number <= 25 ? :green : ( number <= 50? :yellow : :red )
  end
end
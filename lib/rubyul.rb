require "rubyul/version"

module Rubyul

  def self.academic_year(date)
    require 'date'
    (Date.parse(date) << 8).year
  end

end

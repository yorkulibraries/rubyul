require "rubyul/version"

require 'date'
require 'json'

module Rubyul

  def self.academic_year(date)
    (Date.parse(date) << 8).year
  end

  PLATFORM_REGEXES = JSON.parse(File.read(File.dirname(__FILE__) + "/platform_regexes.json"))

  def self.hostname_to_platform(hostname)
    PLATFORM_REGEXES.each do |regexp, platform_name|
      if Regexp.new(regexp) =~ hostname
        return platform_name
      end
    end
    return nil
  end

end

require "rubyul/version"

require "date"
require "json"

# All the small helper functions are here.
module Rubyul
  def self.academic_year(date)
    # Academic years go from September to August.
    (Date.parse(date) << 8).year
  end

  PLATFORM_REGEXES = JSON.parse(File.read(File.dirname(__FILE__) +
                                          "/platform_regexes.json"))

  def self.hostname_to_platform(hostname)
    # TODO: Deal with ignores or not, with an option.
    PLATFORM_REGEXES.each do |regexp, platform_name|
      return platform_name if Regexp.new(regexp) =~ hostname
    end
    nil
  end
end

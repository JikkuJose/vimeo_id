require "vimeo_id/version"
require "vimeo_id/regex"

module VimeoId

  def self.from url
    REGEX.match( url ) do |m|
      m[:id]
    end
  end

end

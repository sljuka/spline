require 'thor/group'

module Spline

  class CliCommand < Thor::Group
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__) + "/.."
    end

  end

end
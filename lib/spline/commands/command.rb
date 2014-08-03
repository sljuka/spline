require 'thor/group'

module Spline

  class Command < Thor::Group
    include Thor::Actions

    def self.source_root
      File.dirname(__FILE__) + "/.."
    end

    def self.alias
      name.downcase
    end

    def self.usage_tip
      name.downcase
    end

    def self.description
      "#{name.downcase} description"
    end

  end

end
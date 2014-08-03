require 'thor/group'

module Spline

  class Command < Thor::Group
    include Thor::Actions

    # root of project, from where we reference the templates
    def self.source_root
      File.dirname(__FILE__) + "/.."
    end

    # name refers to the class name with module. Spline::Command in this case
    def self.command_name
      name.downcase[/\w+::(\w+)command/, 1]
    end

    def self.alias
      command_name
    end

    def self.usage
      command_name
    end

    def self.description
      "#{command_name} description"
    end

  end

end
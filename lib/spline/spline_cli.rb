module Spline

  require 'thor'

  class SplineCli < Thor

    desc 'install', 'sets up folders and files for process dsl'
    def install
      puts "installed"
    end

    desc 'process NAME', 'generates a process sceleton'
    def process(name)
      puts "new process #{name}"
    end

    desc 'new_action NAME', 'generates a action sceleton'
    def new_action(name)
      puts "new action #{name}"
    end

    desc 'generate', 'Generates process and actions ruby source files'
    def generate
      puts "GENERATE GENERATE GENERATE!!!"
    end

  end


end
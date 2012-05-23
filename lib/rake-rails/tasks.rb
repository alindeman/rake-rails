require 'rake'

module Rake
  module Rails
    TASKS = {
      "generate"    => "Generate new code (short-cut alias: \"g\")",
      "console"     => "Start the Rails console (short-cut alias: \"c\")",
      "server"      => "Start the Rails server (short-cut alias: \"s\")",
      "dbconsole"   => "Start a console for the database specified in config/database.yml (short-cut alias: \"db\")",

      "application" => "Generate the Rails application code",
      "destroy"     => "Undo code generated with \"generate\"",
      "benchmarker" => "See how fast a piece of code runs",
      "profiler"    => "Get profile information from a piece of code",
      "plugin"      => "Install a plugin",
      "runner"      => "Run a piece of code in the application environment"
    }

    ALIASES = {
      "g"  => "generate",
      "c"  => "console",
      "s"  => "server",
      "db" => "dbcsonsole"
    }

    class Tasks
      include Rake::DSL

      def initialize
        TASKS.each do |command, description|
          desc description
          task command do
            prevent_additional_arguments_from_running_as_tasks
            require 'rails/cli'
          end
        end

        ALIASES.each do |alias_command, command|
          task alias_command => command
        end
      end

      private

      def prevent_additional_arguments_from_running_as_tasks
        Rake.application.top_level_tasks.clear
      end
    end
  end
end

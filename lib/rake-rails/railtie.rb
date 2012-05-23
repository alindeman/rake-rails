module Rake
  module Rails
    class Railtie < ::Rails::Railtie
      rake_tasks do
        load File.join(File.dirname(__FILE__), "tasks.rb")
        ::Rake::Rails::Tasks.new
      end
    end
  end
end

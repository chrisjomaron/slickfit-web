require 'fileutils'

HOME_DIR = "#{File.dirname(__FILE__)}"


  task :ensure_gems do
    puts `(bundle install --system)`
  end

namespace :start do

      task :web do
        puts `(shotgun -p 4567 web.rb)`
      end

  end

namespace :stop do


  task :web do
    kill_process_by_name('web.rb')
  end


end

def kill_process_by_name(name)
  puts "Trying to stop #{name}"
  `kill \`ps -ef | grep #{name} | grep -v grep | awk '{print $2}'\``
end

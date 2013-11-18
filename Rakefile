require 'fileutils'

HOME_DIR = "#{File.dirname(__FILE__)}"


  task :ensure_gems do
    puts `(bundle install --system)`
  end

namespace :start do

      task :api do
      end

      task :web do
        puts `(shotgun -p 4567 hello.rb)`
      end

      task :mock do
      end

  end

namespace :stop do

  task :api do
  end

  task :web do
    kill_process_by_name('sinatra')
  end

  task :mock do
  end

end

def start_fat_jar(jar_file, jar_configuration)
  process = fork do
    puts "Starting fat jar: java -jar '#{jar_file}' server '#{jar_configuration}'"
    exec "java -jar '#{jar_file}' server '#{jar_configuration}'"
  end
  Process.detach(process)
end

def kill_process_by_name(name)
  puts "Trying to stop #{name}"
  `kill \`ps -ef | grep #{name} | grep -v grep | awk '{print $2}'\``
end

end

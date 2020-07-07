require "bundler/gem_tasks"

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
# ignored
end

task :lambda do
  puts "running lambda rake"

  FileUtils.rm_r %w[terraform/src terraform/.archive.zip]

  puts "copy source lib"
  %w[lib maps].each { |dir|
    dd = "terraform/src/#{dir}"
    FileUtils.mkdir_p(dd)
    FileUtils.cp_r "#{dir}/.", dd
  }

  puts "create fake .archive.zip"
  FileUtils.touch("terraform/.archive.zip")
end
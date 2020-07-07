require "bundler/gem_tasks"

begin
  require 'rspec/core/rake_task'
  RSpec::Core::RakeTask.new(:spec)
rescue LoadError
# ignored
end

task :lambda do
  puts "running lambda rake"

  FileUtils.rm_r %w[terraform/src terraform/.archive.zip], force: true

  puts "copy source lib"
  %w[lib maps interscript.gemspec].each { |f|
    dd = "terraform/src/#{f}"
    FileUtils.mkdir_p(dd) if File.directory?(f)
    FileUtils.copy_entry "#{f}", dd
  }

  puts "create fake .archive.zip"
  FileUtils.touch("terraform/.archive.zip")
end
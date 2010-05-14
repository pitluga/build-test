require 'rake/testtask'

Rake::TestTask.new('test:passing') do |t|
  t.pattern = "test/passing.rb"
end

Rake::TestTask.new('test:failing') do |t|
  t.pattern = "test/failing.rb"
end

task :make_artifact do
  File.open(File.join(ENV["CC_BUILD_ARTIFACTS"], "artifact.txt"), "w") do |file|
    file.write "check it out."
  end
end
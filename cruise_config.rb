Project.configure do |project|
  project.build_command = case project.name
    when "failing_build" then "rake test:failing"
    when "passing_build" then "rake test:passing"
    else raise "not found"
  end
end
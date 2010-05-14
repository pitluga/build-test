Project.configure do |project|
  project.build_command = case project.name
    when "failing_build" then "rake test:failing"
    when "passing_build" then "rake test:passing make_artifact"
    when "local_build" then "rake test:passing"
    else raise "not found"
  end

  if project.respond_to? :elastic_build
    project.elastic_build.pool = :testpool unless project.name =~ /local/
  end
end

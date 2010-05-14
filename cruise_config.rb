Project.configure do |project|
  project.build_command = case project.name
    when "failing_build" then "rake test:failing"
    when "passing_build" then "rake test:passing make_artifact"
    else raise "not found"
  end

  project.elastic_build.pool = :testpool if project.respond_to? :elastic_build
end

namespace :job_probe do

  desc 'setup job probe migrating db and creating a default user'
  task :setup => ['db:drop', 'db:create', 'db:migrate', 'environment'] do
    # Additional tasks
  end
end

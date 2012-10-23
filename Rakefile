require 'bundler/gem_tasks'

desc 'Updates Manifest.txt with a list of files from git'
task :update_manifest do
  `git ls-files > Manifest.txt`
end

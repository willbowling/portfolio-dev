require "yaml"
settings = YAML.load_file "./data/settings.yml"

namespace :deploy do
  desc "Deploy to: #{ settings['datlap_path'] }"
  task :datlap do
    puts "...Deploying to site to:  #{ settings['datlap_path'] }"
    sh "rsync -avz --exclude '.DS_Store' --delete build/ #{ settings['datlap_path'] }"
  end
end
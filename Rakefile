# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks

namespace :db do

  desc "load untappd API into database"
  task :load_beer do

    x = rand(10) * 100 + rand(3)
    y = x + 3
  
    (x..y).each do |id|
      info = Untappd::Beer.info(id, options={})
      if info && info.beer
        hash           = {}
        hash[:name]    = info.beer.beer_name
        hash[:abv]     = info.beer.beer_abv
        hash[:style]   = info.beer.beer_style
        hash[:label]   = info.beer.beer_label
        hash[:brewery] = info.beer.brewery.brewery_name
        Beer.create(hash)
      end
    end
  end

end
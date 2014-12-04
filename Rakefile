# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks


namespace :db do

desc "load untappd data"
  task :load_beers do

    (1..3).map do |id|
      hash = {}
      info = Untappd::Beer.info(id, options={})
      hash[:name]    = info.beer.beer_name || options
      hash[:abv]     = info.beer.beer_abv
      hash[:style]   = info.beer.beer_style
      hash[:label]   = info.beer.beer_label
      hash[:brewery] = info.beer.brewery.brewery_name
      # puts hash
    end

      # Beer.create(hash)
  end

end
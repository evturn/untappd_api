# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require File.expand_path('../config/application', __FILE__)

Rails.application.load_tasks


namespace :db do

desc "load untappd data"
  task :load_beers do
    # response = HTTParty.get('http://api.usatoday.com/open/articles/topnews/sports?api_key=mnsmzv8pam9p2p2sswj4efs8')
    # arr = response["rss"]["channel"]["item"]
    # @api = Api.find_by(name: "USA Today")
    # @topic = Topic.find_by(name: "sports")
    
    # arr.each do |a|
    #   hash = {}
    #   hash[:api] = @api
    #   hash[:topic] = @topic
    #   hash[:source] = "USA Today"
    #   hash[:headline] = a['title']
    #   hash[:url] = a['link']
    #   hash[:date] = Date.parse(a['pubDate'])
    #   hash[:lead] = a['description']
    #   hash[:img_url] = nil
    #   article = Article.create(hash)
    #   article.parse_article
    # end

    3.times.map do |bid|
    urls = []
    url = "https://api.untappd.com/v4/beer/info/#{bid}?client_id=16E1853C36CF3E162699B468424A48C4279030EA&client_secret=B4BC7FB7D8CD6BDA886E92939B388004A3ACC89D"
    urls << url
    end

  

  

    response = HTTParty.get( url )

  end


end
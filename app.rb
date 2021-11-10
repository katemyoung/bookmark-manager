require 'sinatra/base'
require 'sinatra/reloader'
require './lib/bookmark'
require 'pg'

class BookmarkManager < Sinatra::Base

  # @conn = PG.connect( dbname: 'bookmark_manager' )

  configure :test do
    # @conn = PG.connect( dbname: 'bookmark_manager_test' )
  end

  configure :development do
    register Sinatra::Reloader
  end


  get ('/') do
    'Hello World'
  end

  get ('/bookmarks') do
    @bookmarks = Bookmark.all
    erb :bookmarks
  end

  run! if app_file == $0
end
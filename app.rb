require 'sinatra/base'
require './lib/bookmark'

class BookmarkManager < Sinatra::Base
  get '/bookmarks' do
    @bookmarks = Bookmark.all
    erb :index
  end

  get '/add-a-new-bookmark' do
    erb :add_a_new_bookmark
  end

  post '/create-new-bookmark' do
    Bookmark.new(params)
    redirect '/bookmarks'
  end

  run! if app_file == $0
end

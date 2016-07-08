class MainController < ApplicationController
  def index
    @data = RestClient.get('http://itunes.apple.com/search', {params: { term: params[:term] }
      })
    @data = JSON.parse(@data)['results']
  end
end



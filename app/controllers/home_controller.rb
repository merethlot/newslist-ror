require 'json'
require 'rest_client'

class HomeController < ApplicationController
  @@page = 1
  def index
    
  end

  def get_articles_list   
    text_length = 200
    per_page = 5
    response = RestClient.get "https://api.bcs.ru/express_articles/v1?#{text_length}=&page=#{@@page}&per_page=#{per_page}"
    @articles = JSON.parse(response)
    @@page += 1
    @big_index = @@page % 2
    p @@page
    render json: { articles: render_to_string('partials/_article', layout: false, locals: { articles: @articles, page: @big_index}) }
  end
end

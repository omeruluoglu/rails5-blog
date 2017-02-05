class PagesController < ApplicationController
  def index
    @today  = Time.now
    #public access with "@"
    #byebug -> debugging
  end
  def contact
    @message = 'Aksaray Üniversitesi - Ruby on Rails 101'
  end
  def contact_post
    @params = params['/contact']
    render "pages/contact"
    #html çıktısını -> contact.html.erb
  end
end

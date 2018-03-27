class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def hello
    @u = `python3.6 /home/peter/Documents/PPL/Lab3/factorial.py 10`
    render html: @u
  end
end

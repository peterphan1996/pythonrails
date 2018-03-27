class FactorialController < ApplicationController
    def hello
       @u = 0 
    end

    def calculate
        @u = `python3.6 /home/ubuntu/pythonrails/app/controllers/factorial.py #{params[:input][:number]}`
        render 'hello'
    end

end

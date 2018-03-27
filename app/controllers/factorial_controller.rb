class FactorialController < ApplicationController
    def hello
       @u = 0 
    end

    def calculate
        @u = `python3.6 /home/peter/Documents/PPL/Lab3/factorial.py #{params[:input][:number]}`
        render 'hello'
    end

end

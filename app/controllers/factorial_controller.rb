class FactorialController < ApplicationController
    def hello
       @u = 0 
    end

    def calculate
        threads = []

        500.times do |i|
            threads << Thread.new do     
            @u = `python3.6 /home/peter/Documents/PPL/Lab3/test/abc/app/controllers/factorial.py #{params[:input][:number]}`
            puts i
            sleep 2.minutes
            end
        end
        threads.map(&:join)
        render 'hello'
    end

end

class FactorialController < ApplicationController
    def hello
       @u = 0 
    end

    def calculate
        threads = []

        10000.times do |i|
            threads << Thread.new do     
            @u = `python3.6 /home/ubuntu/pythonrails/app/controllers/factorial.py #{params[:input][:number]}`
            puts i
            sleep 2.minutes
            end
        end
        threads.map(&:join)
        render 'hello'
    end

end

require "sinatra"
require "sinatra/base"

class App < Sinatra::Base 

    get '/' do
        @first = rand(20)
        @second = rand(20)

        @vanswer = params[:vanswer]
        @iscorrect = params[:iscorrect]

        puts params

        erb :index
    end

    post '/validate' do
        first = params["first"].to_i
        second = params["second"].to_i
        answer = params["answer"].to_i
        puts "Validating: Is #{first} + #{second} = #{answer}?"
        
        if first + second == answer
            puts "Rätt"
            redirect "/?vanswer=#{answer}&iscorrect=yes"
        else
            redirect "/?vanswer=#{answer}&iscorrect=no"
        end

    end

end
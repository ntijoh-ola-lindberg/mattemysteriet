require "sinatra"
require "sinatra/base"

class App < Sinatra::Base 

    get '/' do
        "Vad är 3+8?"
    end

end
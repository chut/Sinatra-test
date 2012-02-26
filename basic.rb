require 'rubygems'
require 'sinatra'
#each slash represents a different directory fo the website. the code contained inside the do block is what happens when the webpage is loaded
#
get '/' do 

	"Hello, this is the homepage"

end

get '/info' do
	"This is some info about me: I like chut."
end

get '/hello/:name' do
	"hello #{ params[:name].upcase}"
end

get '/more/*' do
	params[:splat]
end

get '/form' do
 erb :form
end

post '/form' do
	"Post is: '#{params[:message]}'"
	
end

#secrete decreypter part
get '/secret' do
	erb :secret
end
post '/secret' do
	params[:thechut].reverse
end


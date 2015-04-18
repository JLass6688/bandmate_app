require 'bundler'
Bundler.require()



#===========================================CONNECTION
ActiveRecord::Base.establish_connection(
	:adapter => 'postgresql',
	:database => 'find_a_bandmate'
)


#===========================================MODELS
require './models/instrument'
require './models/musician'
require './models/bandmate'

get '/' do 

	erb :index

end


#===========================================API ROUTES

#=================Instruments
get '/api/insturments' do 

	content_type :json
	Instrument.all.to_json

end

get '/api/insturments/:id' do 

	content_type :json
	instrument = Instrument.find(params[:id].to_i)
	instrument.to_json

end

post '/api/insturments' do 

	content_type :json
	instrument = Instrument.create(params[:instrument])
	instrument.to_json

end

put '/api/insturments/:id' do 

	content_type :json
	instrument = Instrument.find(params[:id])
	instrument.update(params[:instrument])
	instrument.to_json

end

patch '/api/insturments/:id' do 

	content_type :json
	instrument = Instrument.find(params[:id])
	instrument.update(params[:instrument])
	instrument.to_json

end

delete '/api/insturments/:id' do 

	content_type :json
	instrument = Instrument.find(params[:id])
	instrument.delete
	{message: 'Great Successs'}.to_json

end


#=================Musicians
get '/api/musicians' do 

	content_type :json
	Musician.all.to_json

end

get '/api/musicians/:id' do 

	content_type :json
	musician = Musician.find(params[:id].to_i)
	musician.to_json

end

post '/api/musicians' do 

	content_type :json
	musician = Musician.create(params[:musician])
	musician.to_json

end

put '/api/musicians/:id' do 

	content_type :json
	musician = Musician.find(params[:id])
	musician.update(params[:musician])
	musician.to_json

end

patch '/api/insturments/:id' do 

	content_type :json
	musician = Musician.find(params[:id])
	musician.update(params[:musician])
	musician.to_json

end

delete '/api/insturments/:id' do 

	content_type :json
	musician = Musician.find(params[:id])
	musician.delete
	{message: 'Great Successs'}.to_json

end


#=================Bandmates
get '/api/bandmates' do 

	content_type :json
	Bandmate.all.to_json

end

get '/api/bandmates/:id' do 

	content_type :json
	bandmate = Bandmate.find(params[:id].to_i)
	bandmate.to_json

end

post '/api/bandmates' do 

	content_type :json
	bandmate = Bandmate.create(params[:bandmate])
	bandmate.to_json

end

put '/api/bandmates/:id' do 

	content_type :json
	bandmate = Bandmate.find(params[:id])
	bandmate.update(params[:bandmate])
	bandmate.to_json

end

patch '/api/bandmates/:id' do 

	content_type :json
	bandmate = Bandmate.find(params[:id])
	bandmate.update(params[:bandmate])
	bandmate.to_json

end

delete '/api/bandmates/:id' do 

	content_type :json
	bandmate = Bandmate.find(params[:id])
	bandmate.delete
	{message: 'Great Successs'}.to_json

end















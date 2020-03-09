class App < Sinatra::Base

	get '/' do
		erb :index
	end

	get '/hello' do 
		erb :hello
	end

	get '/goodbye' do 
		@name = "Joe"
		erb :goodbye
	end

	get '/date' do 
		date = Date.today
		@today = date.strftime('%A, %B %d, %Y') 
		#%B Month written out in full, %e date written out in number, %Y year written out. 
		erb :date
	end
end

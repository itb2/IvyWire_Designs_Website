require 'rubygems'
require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get '/' do
  erb :IvyWire
end

get '/projects' do
  erb :IvyWireProjs
end

get '/ivory' do
  erb :IvyWireBio
end

get '/contact' do
  erb :IvyWireContact
end

post '/email' do

	from = Email.new(email:params[:address])
	subject = params[:subject]
	to = Email.new(email:'itb2@duke.edu')
	content = Content.new(type:'text/plain', value: params[:message])
	mail = Mail.new(from, subject, to, content)
	sg = SendGrid::API.new(api_key:ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)
	puts response.status_code
	puts response.body
	puts response.headers
	puts ENV['SENDGRID_API_KEY']
	puts params
	erb :IvyWireEmailSent

end


not_found do
  halt 404, 'page not found'
end

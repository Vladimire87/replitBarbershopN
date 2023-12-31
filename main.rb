require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :protection, except: :frame_options
set :bind, '0.0.0.0'
set :port, 8080

set :database, { adapter: 'sqlite3', database: 'barbershop.db' }

class Client < ActiveRecord::Base
  validates :name, presence: true, length: { minimum: 3 }
  validates :phone, presence: true
  validates :datestamp, presence: true
  validates :barber, presence: true
  validates :color, presence: true
end

class Barber < ActiveRecord::Base
end

class Contact < ActiveRecord::Base
end

before do
  @barbers = Barber.all
end

def errors_show(hash)
  @error = hash.select { |key, _| params[key] == '' }.values.join(', ')
end

get '/' do
  erb :index
end

get '/appointment' do
  @c = Client.new
  erb :appointment
end

post '/appointment' do
  @c = Client.new params[:client]
  if @c.save
    erb "Appointment created!"
  else
    @error = @c.errors.full_messages.first
    erb :appointment
  end
end

get '/contacts' do
  erb :contacts
end

post '/contacts' do
  email = params[:email]
  message = params[:message]

  hh = {
    email: 'Введите Имейл',
    message: 'Введите Сообщение'
  }

  errors_show(hh)

  return erb :contacts if @error != ''

  contact_create = Contact.create(email: email, message: message)

  erb 'Thank you!'
end

get "/barber/:name" do
  @barber = Barber.find_by(name: params[:name])
  erb :barber
end

get "/list" do
  @clients = Client.order("datestamp ASC")
 erb :list
end

get "/client/:id" do
  @client = Client.find(params[:id])
  erb :client
end
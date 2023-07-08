require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
require 'sinatra/activerecord'

set :protection, except: :frame_options
set :bind, '0.0.0.0'
set :port, 8080

set :database, { adapter: 'sqlite3', database: 'barbershop.db' }

class Client < ActiveRecord::Base
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
  erb :appointment
end

post '/appointment' do
  @username = params[:username]
  @tel = params[:tel]
  @date = params[:date]
  @barber = params[:barber]
  @color = params[:color]

  hh = {
    username: 'Введите Имя',
    tel: 'Введите Телефон',
    date: 'Введите Дату',
    barber: 'Выберите Барбера',
    color: 'Выберите цвет'
  }

  errors_show(hh)

  return erb :appointment if @error != ''

  appointment_create = Client.create(name: @username, phone: @tel, datestamp: @date, barber: @barber, color: @color)
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

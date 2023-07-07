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

before do
  @barbers = Barber.all
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

  erb "Спасибо за запись! Username: #{@username}, Phone: #{@tel}, Date: #{@date}, Barber: #{@barber}, Color: #{@color}"
end

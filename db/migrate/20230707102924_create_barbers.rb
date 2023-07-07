class CreateBarbers < ActiveRecord::Migration[7.0]
  def change
    create_table :barbers do |t|
      t.text :name

      t.timestamps
    end

    Barber.create name: 'Vlad'
    Barber.create name: 'Jhon'
    Barber.create name: 'Arnold'
  end
end

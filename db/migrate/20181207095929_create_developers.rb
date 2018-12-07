class CreateDevelopers < ActiveRecord::Migration[5.1]
  def change
    create_table :developers do |t|
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :email
      t.string :profile_photo
      t.date :date_of_birth
      t.string :permanent_address
      t.string :developer_type
      t.text :about
      t.string :city
      t.string :state
      t.string :country
      t.string :zipcode
      t.float :latitude
      t.float :longitude

      t.timestamps
    end
  end
end

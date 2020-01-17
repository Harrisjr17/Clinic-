class CreatePatients < ActiveRecord::Migration[6.0]
  def change
    create_table :patients do |t|
      t.string :title
      t.string :firstname
      t.string :middlename
      t.string :surname
      t.string :gender
      t.string :phonenumber
      t.date :dob

      t.timestamps
    end
  end
end

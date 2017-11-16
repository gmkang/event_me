class CreateFriends < ActiveRecord::Migration[5.1]
  def change
    create_table :friends do |t|
      t.string :name
      t.datetime :dob
      t.text :notes

      t.timestamps
    end
  end
end

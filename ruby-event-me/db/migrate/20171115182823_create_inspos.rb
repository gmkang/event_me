class CreateInspos < ActiveRecord::Migration[5.1]
  def change
    create_table :inspos do |t|
      t.string :image

      t.timestamps
    end
  end
end
class CreateDeposits < ActiveRecord::Migration
  def change
    create_table :deposits do |t|
      t.string :full_name
      t.date :birth_date
      t.boolean :gender
      t.string :email
      t.string :contact_number
      t.string :education
      t.string :nationality
      t.text :resume
      t.string :salary

      t.timestamps
    end

    add_index :deposits, :email, :unique => true
  end
end

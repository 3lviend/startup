class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.string :name
      t.text :bio
      t.string :city
      t.string :portofolio_url
      t.string :github_url
      t.integer :job_notif
      t.integer :user_id

      t.timestamps
    end

    add_index :profiles, :user_id
  end
end

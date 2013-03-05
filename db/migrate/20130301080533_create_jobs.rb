class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.integer :category_id
      t.string :location
      t.text :description
      t.text :apply_to
      t.string :company_name
      t.string :url
      t.string :email
      t.boolean :publish, :default => false
      t.boolean :highlight, :default => false

      t.timestamps
    end
  end
end

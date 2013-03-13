class AddFieldsToJob < ActiveRecord::Migration
  def change
    add_column :jobs, :job_type, :string
    add_column :jobs, :salary, :string

    add_index :jobs, :job_type
    add_index :jobs, :salary
    add_index :jobs, :title
    add_index :jobs, :company_name
  end
end

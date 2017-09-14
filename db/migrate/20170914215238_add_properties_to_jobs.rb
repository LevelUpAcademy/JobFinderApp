class AddPropertiesToJobs < ActiveRecord::Migration[5.1]
  def change
    add_column :jobs, :position, :string
    add_column :jobs, :briefing, :text
  end
end

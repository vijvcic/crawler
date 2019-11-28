class CreateCityJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :city_jobs do |t|
      t.integer :city_id
      t.integer :job_id
      
      t.timestamps null: false
    end
  end
end

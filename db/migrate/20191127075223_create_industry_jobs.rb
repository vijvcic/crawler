class CreateIndustryJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :industry_jobs do |t|
      t.integer :job_id
      t.integer :industry_id

      t.timestamps null: false
    end

    add_index :industry_jobs, :job_id
    add_index :industry_jobs, :industry_id
  end
end

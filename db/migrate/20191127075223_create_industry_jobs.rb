class CreateIndustryJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :industry_jobs do |t|
      t.integer :job_id
      t.integer :industry_id

      t.timestamps null: false
    end
  end
end

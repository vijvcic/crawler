class CreateUserJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :user_jobs do |t|
      t.integer :user_id
      t.integer :job_id
      t.integer :job_type
      t.datetime :favorited_at
      t.datetime :viewed_at
      t.datetime :applied_at

      t.timestamps null: false
    end

    add_index :user_jobs, :user_id
    add_index :user_jobs, :job_id
    add_index :user_jobs, [:user_id, :job_id]
  end
end

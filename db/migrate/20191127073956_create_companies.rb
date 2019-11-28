class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :username, null: false, default: ""
      t.string :email, null: false, default: ""
      t.text :description
      t.string :address
      t.string :url
      
      t.timestamps null: false
    end
  end
end

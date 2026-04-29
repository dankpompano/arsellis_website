class CreateConsoltations < ActiveRecord::Migration[8.1]
  def change
    create_table :consoltations do |t|
      t.string :first_name, null: false
      t.string :last_name, null: false
      t.string :address
      t.string :city
      t.string :state
      t.integer :zip_code
      t.string :email
      t.string :phone, null: false
      t.string :project_type
      t.string :has_plans
      t.text :referral

      t.timestamps
    end
  end
end

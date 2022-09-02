class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users, id: :integer do |t|
      t.string :name, null: false
      t.string :email, null: false, unique: true
      t.string :password, null: false
      t.string :address, null:false
      t.string :phone
      t.date :dob
      t.string :gender, null:false, limit: 1
      t.string :role, limit: 1
      t.integer :created_id, null: false
      t.integer :updated_id, null: false
      t.integer :deleted_id
      t.datetime :deleted_at
      t.timestamps
    end
  end
end

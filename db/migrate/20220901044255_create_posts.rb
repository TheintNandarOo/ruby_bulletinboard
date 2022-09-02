class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts, id: :integer do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.integer :public_flag, null: false
      t.integer :created_id, null: false
      t.integer :updated_id, null: false
      t.integer :deleted_id
      t.datetime :deleted_at
      t.timestamps
    end
  end
end

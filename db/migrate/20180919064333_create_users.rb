class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users  do |t|
      t.string :firstname
      t.string :lastname
      t.string :email
      t.string :password
      t.string :expert_level
      t.integer :updated_by
      t.integer :created_by
      t.boolean "active", default: true
      t.jsonb :attrs, :default => {}

      t.timestamps null: false
    end
  end
end

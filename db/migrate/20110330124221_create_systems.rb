class CreateSystems < ActiveRecord::Migration
  def self.up
    create_table :systems do |t|
      t.integer :user_id
      t.string :content
      t.string :nom
      t.string :tags

      t.timestamps
    end
    add_index :systems, :user_id
  end

  def self.down
    drop_table :systems
  end
end

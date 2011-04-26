class CreateAliases < ActiveRecord::Migration
  def self.up
    create_table :aliases do |t|
      t.string :address
      t.string :goto
      t.integer :domain_id
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :aliases
  end
end

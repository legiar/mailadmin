class CreateWhitelists < ActiveRecord::Migration
  def self.up
    create_table :whitelists do |t|
      t.integer :mailbox_id
      t.integer :domain_id
      t.string :address
      t.string :action

      t.timestamps
    end
  end

  def self.down
    drop_table :whitelists
  end
end

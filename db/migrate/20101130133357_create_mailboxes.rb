class CreateMailboxes < ActiveRecord::Migration
  def self.up
    create_table :mailboxes do |t|
      t.string :username
      t.string :password
      t.string :name
      t.string :maildir
      t.string :local_part
      t.integer :domain_id
      t.boolean :active

      t.timestamps
    end
  end

  def self.down
    drop_table :mailboxes
  end
end

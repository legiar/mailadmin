class AddBackupMxToDomain < ActiveRecord::Migration
  def self.up
    add_column :domains, :backupmx, :boolean
  end

  def self.down
    remove_column :domains, :backupmx
  end
end

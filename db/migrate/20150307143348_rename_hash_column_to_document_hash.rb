class RenameHashColumnToDocumentHash < ActiveRecord::Migration
  def change
    rename_column :messages, :hash, :documenthash
  end
end

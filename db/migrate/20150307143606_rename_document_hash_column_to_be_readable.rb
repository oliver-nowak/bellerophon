class RenameDocumentHashColumnToBeReadable < ActiveRecord::Migration
  def change
    rename_column :messages, :documenthash, :document_hash
  end
end

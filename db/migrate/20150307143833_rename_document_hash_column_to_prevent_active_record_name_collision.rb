class RenameDocumentHashColumnToPreventActiveRecordNameCollision < ActiveRecord::Migration
  def change
    rename_column :messages, :document_hash, :document_guid
  end
end

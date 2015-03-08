class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.timestamps null: false

      t.column :document,         :text,      null: false
      t.column :is_spam,          :boolean,   null: true,   index: true

    end
  end
end

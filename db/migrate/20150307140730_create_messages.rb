class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.timestamps null: false

      t.column :hash,             :string,    null: false, index: true
      t.column :from,             :string,    null: false
      t.column :to,               :string,    null: false
      t.column :subject,          :string,    null: false
      t.column :date,             :datetime,  null: false
      t.column :document,         :text,      null: false
      t.column :spam_probability, :float,     null: false, index: true

    end
  end
end

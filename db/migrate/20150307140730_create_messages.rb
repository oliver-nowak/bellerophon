class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|

      t.timestamps null: false

      t.column :from,             :string,    null: true, index: true
      t.column :to,               :string,    null: true, index: true
      t.column :subject,          :string,    null: true
      t.column :date,             :datetime,  null: true, index: true
      t.column :document,         :text,      null: false
      t.column :spam_probability, :float,     null: true, index: true
      t.column :md5,              :string,    null: false, index: true

    end
  end
end

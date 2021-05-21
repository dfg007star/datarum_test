class CreateCorrections < ActiveRecord::Migration[6.1]
  def change
    create_table :corrections do |t|
      t.text :body, null: false
      t.boolean :allowence, default: false
      t.references :user, null: false, foreign_key: true
      t.references :question, null: false, foreign_key: true
      t.references :answer, null: false, foreign_key: true

      t.timestamps
    end
  end
end

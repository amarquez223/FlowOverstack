class CreateQvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :qvotes do |t|
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

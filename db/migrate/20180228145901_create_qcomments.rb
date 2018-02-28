class CreateQcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :qcomments do |t|
      t.text :qcomment
      t.references :question, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

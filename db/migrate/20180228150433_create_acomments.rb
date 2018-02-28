class CreateAcomments < ActiveRecord::Migration[5.1]
  def change
    create_table :acomments do |t|
      t.text :acomment
      t.references :answer, foreign_key: true

      t.timestamps
    end
  end
end

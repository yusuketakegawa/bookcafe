class CreateTalks < ActiveRecord::Migration[6.0]
  def change
    create_table :talks do |t|
      t.text        :talking,    null: false
      t.references  :user,       null: false, foreign_key: true
      t.references  :room,       null: false, foreign_key: true
      t.timestamps
    end
  end
end

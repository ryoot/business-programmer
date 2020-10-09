class CreateProgrammers < ActiveRecord::Migration[6.0]
  def change
    create_table :programmers do |t|
      t.integer :user_id
      t.string :title
      t.text :body
      t.string :image_id

      t.timestamps
    end
  end
end

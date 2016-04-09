class CreateGoogles < ActiveRecord::Migration
  def change
    create_table :googles do |t|
      t.string :title
      t.text :body
      t.string :time

      t.timestamps null: false
    end
  end
end

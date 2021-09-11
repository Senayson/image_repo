class CreateImages < ActiveRecord::Migration[6.1]
  def change
    create_table :images do |t|
      t.string :title
      t.string :size
      t.string :category
      t.string :url

      t.timestamps
    end
  end
end

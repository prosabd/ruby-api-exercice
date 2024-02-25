class CreateMessages < ActiveRecord::Migration[7.1]
  def change
    create_table :messages do |t|
      t.string :title
      t.string :content
      t.boolean :is_accepted

      t.timestamps
    end
  end
end

class CreateSkills < ActiveRecord::Migration[5.2]
  def change
    create_table :skills do |t|
      t.string :name
      t.text :description
      t.boolean :display_in_index, default: true

      t.timestamps
    end
  end
end

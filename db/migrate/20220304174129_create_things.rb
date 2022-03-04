class CreateThings < ActiveRecord::Migration[6.1]
  def change
    create_table :things do |t|
      t.string :attr1
      t.float :attr2

      t.timestamps
    end
  end
end

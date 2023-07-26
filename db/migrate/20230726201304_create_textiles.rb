class CreateTextiles < ActiveRecord::Migration[7.0]
  def change
    create_table :textiles do |t|
      t.string :name
      t.float :price
      t.string :status
      t.text :description
      t.references :user,
                   null: false,
                   index: {name: 'user_on_textile_indx'},
                   foreign_key: {to_table: :users}

      t.timestamps
    end
    add_index :users, :name
  end
end

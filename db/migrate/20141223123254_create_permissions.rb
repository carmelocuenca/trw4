class CreatePermissions < ActiveRecord::Migration
  def change
    create_table :permissions do |t|
      t.boolean :admin, default: false
      t.references :person

      t.timestamps null: false
    end
  end
end

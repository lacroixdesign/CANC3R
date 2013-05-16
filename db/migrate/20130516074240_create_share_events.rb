class CreateShareEvents < ActiveRecord::Migration
  def change
    create_table :share_events do |t|
      t.string :type

      t.timestamps
    end

    add_index :share_events, :type
  end
end

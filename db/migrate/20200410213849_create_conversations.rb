class CreateConversations < ActiveRecord::Migration[6.0]
  def change
    create_table :conversations do |t|
      t.string :title
      t.string :phone

      t.timestamps
    end
  end
end

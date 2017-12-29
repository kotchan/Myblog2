class CreateMessageTest2s < ActiveRecord::Migration[5.1]
  def change
    create_table :message_test2s do |t|
      t.string :title
      t.string :message

      t.timestamps
    end
  end
end

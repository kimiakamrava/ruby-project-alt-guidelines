
class CreateMemories < ActiveRecord::Migration[5.2]
  def change
    create_table :memories do |t|
      t.integer :real_character_id
      t.integer :parasite_id
   end
 end
end
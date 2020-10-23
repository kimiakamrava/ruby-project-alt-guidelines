class CreateParasites < ActiveRecord::Migration[5.2]
  def change
    create_table :parasites do |t|
      t.string :name
      t.string :identity
      t.string :story
    end
  end
end

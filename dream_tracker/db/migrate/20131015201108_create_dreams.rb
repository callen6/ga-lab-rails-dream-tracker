class CreateDreams < ActiveRecord::Migration
  def change
    create_table :dreams do |t|
      t.string :subject
      t.timestamps :time
      t.boolean :good_dream
      t.boolean :recurring_dream
      t.text :description
      t.string :emotions
      t.integer :vividness
    end
  end
end

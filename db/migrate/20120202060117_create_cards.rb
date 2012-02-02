class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.string :from
      t.string :to
      t.text :message
      t.string :bg
      t.string :design

      t.timestamps
    end
  end
end

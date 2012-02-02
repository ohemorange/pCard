class CreateDesigns < ActiveRecord::Migration
  def change
    create_table :designs do |t|
      t.string :file

      t.timestamps
    end
  end
end

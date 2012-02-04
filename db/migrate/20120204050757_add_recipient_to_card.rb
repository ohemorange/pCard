class AddRecipientToCard < ActiveRecord::Migration
  def change
    add_column :cards, :recipient, :string

  end
end

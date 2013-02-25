class CreateBonethugs < ActiveRecord::Migration
  def change
    create_table :bonethugs do |t|
      t.string :imagelink
      t.string :thugname
      t.string :bio
      t.timestamps
    end
  end
end

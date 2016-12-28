class CreateEarlySignups < ActiveRecord::Migration
  def change
    create_table :early_signups do |t|
      t.string :email
      t.boolean :signed_up

      t.timestamps null: false
    end
  end
end

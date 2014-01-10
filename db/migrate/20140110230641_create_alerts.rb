class CreateAlerts < ActiveRecord::Migration
  def change
    create_table :alerts do |t|
      t.string :name
      t.string :subject
      t.text :body
      t.boolean :enabled
      t.string :alert_type

      t.timestamps
    end
  end
end

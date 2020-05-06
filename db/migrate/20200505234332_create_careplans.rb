class CreateCareplans < ActiveRecord::Migration[6.0]
  def change
    create_table :careplans do |t|
      t.references :customer, null: false, foreign_key: true
      t.date :create_plan
      t.date :update_plan
      t.text :care_task
      t.text :long_time_care_goal
      t.text :short_time_care_goal
      t.text :user_wants
      t.text :family_wants
      t.text :situation_achieved_goal

      t.timestamps
    end
  end
end

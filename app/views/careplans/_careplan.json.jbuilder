json.extract! careplan, :id, :customer_id, :create_plan, :update_plan, :care_task, :long_time_care_goal, :short_time_care_goal, :user_wants, :family_wants, :situation_achieved_goal, :created_at, :updated_at
json.url careplan_url(careplan, format: :json)

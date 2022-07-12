json.extract! review, :id, :result_id, :plan_id, :treatment_id, :user_id, :provider_id, :description, :created_at, :updated_at
json.url review_url(review, format: :json)

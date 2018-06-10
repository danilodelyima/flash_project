json.extract! topic, :id, :name, :confidence, :reviewed, :next_review, :classroom_id, :created_at, :updated_at
json.url topic_url(topic, format: :json)

json.extract! post, :id, :title, :content, :musician_id, :created_at, :updated_at
json.url post_url(post, format: :json)

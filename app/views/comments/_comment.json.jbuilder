json.extract! comment, :id, :content, :regular_user_id, :post_id, :created_at, :updated_at
json.url comment_url(comment, format: :json)

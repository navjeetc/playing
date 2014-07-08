json.array!(@commitments) do |commitment|
  json.extract! commitment, :id, :start_at, :duration, :user_id
  json.url commitment_url(commitment, format: :json)
end

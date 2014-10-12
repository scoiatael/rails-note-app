json.array!(@notes) do |note|
  json.extract! note, :id, :title, :body, :done, :deadline
  json.url note_url(note, format: :json)
end

xml.instruct!  

xml.retroaction do
  xml.id @retroaction.id
  xml.created_at @retroaction.created_at
  xml.mistake_id @retroaction.mistake.id
end


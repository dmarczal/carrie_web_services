xml.instruct!  

xml.hit do
  xml.id @hit.id
  xml.created_at @hit.created_at
  xml.user_id @hit.user.id
  xml.oa @hit.oa
  xml.answer @hit.answer
  xml.correct_answer @hit.correct_answer
  xml.exercise @hit.exercise
  xml.cell @hit.cell
end


xml.instruct!  

xml.mistakesArray do

  if @mistakes && !@mistakes.empty?

    xml.user do
      xml.id @mistakes.first.user.id
      xml.email @mistakes.first.user.email
      xml.created_at @mistakes.first.user.created_at
    end

    xml.mistakes(:length => "#{@mistakes.length}")  do


      for mistake in @mistakes do   
        xml.mistake do
          xml.id mistake.id
          xml.created_at mistake.created_at
          xml.updated_at mistake.updated_at
          xml.title mistake.title
          xml.oa mistake.oa
          xml.description mistake.description
          xml.exercise mistake.exercise
          xml.answer mistake.answer
          xml.correct_answer mistake.correct_answer
          xml.cell mistake.cell
          xml.object mistake.object
        end
      end  
    end
  end

end

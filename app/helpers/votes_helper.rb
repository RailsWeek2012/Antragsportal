module VotesHelper
  def show_votes_by_decision(decision)
    
    #Ermittelt das Abstimmungsergebnis zur angegebenen Abstimmung
     votes = Vote.where("id=?",decision.vote_id)

     htmlstring = "Abstimmungsergebnis<br />"
     
      votes.each do |vote|
        htmlstring += '<b>CDU:</b>&nbsp;' + vote.cdu_party.to_s + '&nbsp;&nbsp;<b>SPD:</b>&nbsp;' + vote.spd_party.to_s
      end
      
      htmlstring.html_safe
  end
end

module MotionsHelper
  
  # Dient zur Anzeige eines Antrags auf einer Karte
  def show_motion_on_map (motion)

        #Berechnet den Ausschnitt
        firstlat = motion.latitude.to_f - 0.003311
        secondlat = motion.latitude.to_f + 0.003191
        firstlon = motion.longitude.to_f - 0.05594
        secondlon = motion.longitude.to_f + 0.0014

        iframe_with_map = '<iframe width="242" height="200" frameborder="0" scrolling="no" marginheight="0" marginwidth="0" src="http://www.openstreetmap.org/export/embed.html?bbox=' + firstlon.to_s  + ',' + firstlat.to_s + ',' + secondlon.to_s + ',' + firstlat.to_s + '&amp;layer=mapnik&amp;marker=' + motion.latitude.to_s + ',' + motion.longitude.to_s + '" style="border: 1px solid black"></iframe>'
   
        # Workaround um ein automatisches Escapen zu vermeiden
        iframe_with_map.html_safe
  end
  
  # Dient zur Anzeiger der Basisinformationen eines Antrags
  def show_basic_information_from_motion(mottion)
    
  end
end

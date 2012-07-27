module ProjectsHelper
  # Zeigt die zu einem Antrag gehörenden Projekte an
  def show_associated_projects(motion)
      
      htmlstring = "<b>Zugeordnete Projekte:</b><br>"
      
      projects = Motion.find(motion.id).projects 
      
      projects.each do |project|
        htmlstring += '<a href="showmotions?projectid=' + (project.id).to_s + '">[' + project.name + ']&nbsp;&nbsp;'
      end
        
      htmlstring.html_safe
  end
end

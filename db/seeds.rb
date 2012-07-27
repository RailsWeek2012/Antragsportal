# Erstellt die Grundlegenden Anträge
motion1 = Motion.create(title: 'Antrag Nr. 1', text:"Dies ist der Antragstext zu Antrag Nr. 1 "*50, date:'2012-01-01', register:'STV/100/2012', latitude:'50.58757088330654', longitude:'8.68145227432251')
motion2 = Motion.create(title: 'Antrag Nr. 2', text:"Dies ist der Antragstext zu Antrag Nr. 2 "*50, date:'2012-01-01', register:'STV/101/2012', latitude:'50.57397454819801', longitude:'8.69966983795166')
motion3 = Motion.create(title: 'Antrag Nr. 3', text:"Dies ist der Antragstext zu Antrag Nr. 3 "*50, date:'2012-01-01', register:'STV/200/2012', latitude:'50.57070386599483', longitude:'8.67246150970459')
motion4 = Motion.create(title: 'Antrag Nr. 4', text:"Dies ist der Antragstext zu Antrag Nr. 4 "*50, date:'2012-01-01', register:'STV/300/2012', latitude:'50.59062425035281', longitude:'8.66417884826602')

# Erstellt die Tags zum Antrag
Tag.create(name: 'TagA1.1', motion_id: 1)
Tag.create(name: 'TagA1.2', motion_id: 1)
Tag.create(name: 'TagA1.3', motion_id: 1)
Tag.create(name: 'TagA2.1', motion_id: 2)
Tag.create(name: 'TagA2.1', motion_id: 2)
Tag.create(name: 'TagA3.1', motion_id: 3)

# Erstellt Projekte
project1 = Project.create(name: 'Projekt A1A2A3')
project2 = Project.create(name: 'Projekt A1A2')
project3 = Project.create(name: 'Projekt A1A4')

# Weißt den Anträgen die Projekte zu
motion1.projects << project1
motion1.projects << project2
motion1.projects << project3
motion2.projects << project1
motion2.projects << project2
motion3.projects << project1
motion4.projects << project3

# Erstellt die Entscheidungen in den Ausschüssen
Decision.create(vote_id: 1, motion_id: 1, text: "Dies Antragstext zu Antrag Nr. 1"*50, commitee_name: 'Bauausschuss', commitee_date: '2012-01-20')
Decision.create(vote_id: 2, motion_id: 1, text: "Dies Antragstext zu Antrag Nr. 1"*50, commitee_name: 'Hauptausschuss', commitee_date: '2012-01-21')
Decision.create(vote_id: 3, motion_id: 1, text: "Dies Antragstext zu Antrag Nr. 1"*50, commitee_name: 'Stadtverordnetenversammlung', commitee_date: '2012-01-22')

Decision.create(vote_id: 4, motion_id: 2, text: 'Dies Antragstext zu Antrag Nr. 2, jetzt geaendert'*50, commitee_name: 'Sozialausschuss', commitee_date: '2012-01-21')
Decision.create(vote_id: 5, motion_id: 2, text: 'Dies Antragstext zu Antrag Nr. 2, jetzt geaendert'*50, commitee_name: 'Stadtverordnetenversammlung', commitee_date: '2012-01-22')

Decision.create(vote_id: 6, motion_id: 3, text: 'Dies Antragstext zu Antrag Nr. 3', commitee_name: 'Bauausschuss', commitee_date: '2012-02-20')
Decision.create(vote_id: 7, motion_id: 3, text: 'Dies Antragstext zu Antrag Nr. 3, jetzt geaendert'*50, commitee_name: 'Hauptausschuss', commitee_date: '2012-02-21')
Decision.create(vote_id: 8, motion_id: 3, text: 'Dies Antragstext zu Antrag Nr. 3, jetzt geaendert'*50, commitee_name: 'Stadtverordnetenversammlung', commitee_date: '2012-02-22')

Decision.create(vote_id: 9, motion_id: 4, text: 'Dies Antragstext zu Antrag Nr. 4'*50, commitee_name: 'Bauausschuss', commitee_date: '2012-02-20')
Decision.create(vote_id: 10, motion_id: 4, text: 'Dies Antragstext zu Antrag Nr. 4'*50, commitee_name: 'Sozialausschuss', commitee_date: '2012-02-21')
Decision.create(vote_id: 11, motion_id: 4, text: 'Dies Antragstext zu Antrag Nr. 4'*50, commitee_name: 'Stadtverordnetenversammlung', commitee_date: '2012-02-22')

# Erstellt Beispieldaten der Abstimmungen
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Vote.create(cdu_party: '10-1-2', spd_party: '11-0-2')
Year.delete_all
	
a = Year.create(year: 1985, event_title: "Justice Palace Siege. Terrorist attack to Antonio Navarro Wolf")
a.cocaine_production = CocaineProduction.new(total: 0)
a.events.create(title: "Terrorist attack to Antonio Navarro Wolf", synopsis: "Antonio Navarro Wolf was one 
	of the main ideological and political leaders of the M19 (a left wing guerrilla group). The incident put 
	into an end the peace process between the guerrilla group and the Colombian government started by president 
	Belisario Betancourt in 1982. In spite of this events, today Antonio Navarro is a prominent and respected 
	political leader.")
a.events.create(title: "Justice Palace Siege", synopsis: "the 6 of November the M19 
	(a left wing guerrilla group) takes over the control of the Justice Palace. The guerrilla 
	kidnapped Judges, personnel and visitors of the building for 2 days. The Colombian army 
	responded to the attack with heavy weaponry and the center of Bogota became a battlefield 
	between the guerrilla and the militaries. As a temporary solution, the government bans any 
	information about the siege in the media and orders the transmission of a soccer match.
	The event left a total of 94 deaths and 11 desaparecidos (there is no clarity about what 
	happen to this people) and the major destruction of the building. Most of the judges and 
	members of the supreme courts were killed in the siege.")


h = Year.create(year: 1986, event_title: "Guillermo Cano Assassinated. Virgilio Barco is elected president")
h.cocaine_production = CocaineProduction.new(total: 710, bolivia: 220, colombia: 30, peru: 460)
h.events.create(title: "Guillermo Cano Assassination", synopsis: "Guillermo Cano was the director of 
	El Espectador a national newspaper. El Espectador, was the only newspaper that report on the effects of 
	narcotrafic and it's relationship with political power and violence. The assassination was considered a 
	great violation to the freedom of speech in the country, nevertheless, El Espectador didn't stop the 
	acusations and reports on the members of the big cartels.")
h.events.create(title: "Virgilio Barco is elected president")


i = Year.create(year: 1987, event_title: "Jaime Pardo Leal and Hector Abad Gomez assesinated. Carlos leader captured.")
i.cocaine_production = CocaineProduction.new(total: 740, bolivia: 220, colombia: 40, peru: 480)
i.events.create(title: "Jaime Pardo Leal assassination", synopsis: "The presidential candidate Jaime Pardo 
	Leal, member of the UP party, a left wing political group originated from a peace process with FARC.  
	This political party was subject of a genocide a well organized targeted killing operation that killed the 
	main leaders of the organization and destroy it's roots a social organization.")
i.events.create(title: "Hector Abad Gomez assassination", synopsis: "Hector Abad Gomez, a Human Rights and 
	development leader was murder by the paramilitary groups. He was one of the most respected leaders in 
	Antioquia. The day he was murder other two Human Rights leaders were murdered.")
i.events.create(title: "Carlos leader captured", synopsis: "Carlos Leader, a drug lord and member of the Cartel 
	de Medellin was captured by the Colombian police and was extradited to the United States. This was one of 
	the triggers of the war between the Colombian State and the Extraditables (the group of most wanted criminals 
	for extradition).")


j = Year.create(year: 1988, user_rate: 660, event_title: "Andres Pastrana and Alvaro Gomez Hurtado Kidnapped. 
	Carlos Mauro Hoyos Assesinated.")
j.cocaine_production = CocaineProduction.new(total: 750, bolivia: 225, colombia: 55, peru: 470)
j.events.create(title: "Andres Pastrana Kidnapped", synopsis: "Andres Pastrana, a candidate for Mayor 
	in Bogota, was kidnapped by the Extraditables (the group of most wanted criminals for extradition). 
	He was chosen for being member of one of the most traditional political families in the country. 
	His father, Misael Pastrana was president from 1970-1974 and Andres was elected president in 1998. 
	The Extraditables wanted to negotiate the freedom of Andres for the elimination of extradition. 
	The 25 of January he was rescued by the Colombian Army.")
j.events.create(title: "Carlos Mauro Hoyos Assesination", synopsis: "Carlos Mauro Hoyos was the General 
	Prosecutor of Colombia. During his time in office, he prosecuted several cases of narcotrafic and 
	narco related violence. He was kidnapped by the Extraditables (the group of most wanted criminals for 
	extradition) on the same day as Andres Pastrana. As retaliation to the rescue of Andres Pastrana, 
	he was murdered by the extraditables.")
j.events.create(title: "Alvaro Gomez Hurtado Kidnapped", synopsis: "The Conservative politician Alvaro 
	Gomez Hurtado, was kidnapped by M19. At the beginning, the Guerrilla didn't recognize authority for 
	the crime. Once M19 accepted the authority of the kidnapping, by asking for the beginning of a peace 
	negotiation. This negotiation was the root for the new constitution in 1991.")


k = Year.create(year: 1989, user_rate: 576, event_title: "The Avianca Airplane bombing. Assassination of 
	Luis Carlos Galan. Bomb at the DAS. Dies Gonzalo Rodriguez Gacha.")
k.cocaine_production = CocaineProduction.new(total: 755, bolivia: 220, colombia: 70, peru: 465)
k.events.create(title: "The Avianca Airplane bombing", synopsis: "The extraditables exploited a bomb at a 
	commercial airplane fling between Bogota and Cali. 107 persons died. This terrorist attack it's the beginning 
	of the war between the Extraditables, leaded by Pablo Escobar and the Colombian government.")
k.events.create(title: "Assassination of Luis Carlos Galan", synopsis: "Pablo Escobar assassinated the leader of 
	the Liberal Party and presidential candidate Luis Carlos Galan. Luis Carlos Galan had a great social support 
	and was considered the favorite candidate to win the 1990 election. The Nuevo liberalismo Galan's political 
	faction was a great enemy of Escobar. In 1982 Escobar was expelled from the organization by Galan him self. 
	Moreover in 1984 Rodrigo Lara Bonilla, the Ministry of Justice and member of the Nuevo Liberalismo was murder 
	by Escobar. The Chief advisor of Galan's campaign Cesar Gaviria, became the new candidate for the Liberal Party.")
k.events.create(title: "Bomb at the DAS", synopsis: "The Colombian intelligence agency DAS, was bombed by the Medellin 
	Cartel. DAS was one of the leading agencies in the process to prosecute Pablo Escobar and the other members of 
	the Medellin Cartel. The terrorist attack indented to assassinate Miguel Maza Marquez, DAS director. The attack 
	left more than 50 people died and 600 wounded.")
k.events.create(title: "Dies Gonzalo Rodriguez Gacha", synopsis: "One of the most important members of the Medellin 
	Cartel Gonzalo Rodriguez Gacha (El Mexicano) died in a confrontation with the Colombian police.")


l = Year.create(year: 1990, user_rate: 447, event_title: "The Seven Ballot movement. Journalist kidnaping operation by 
	the Extraditables")
l.cocaine_production = CocaineProduction.new(total: 775, bolivia: 220, colombia: 65, peru: 490)
l.events.create(title: "The Seven Ballot movement", synopsis: "The Seven Ballot movement (sepima papeleta) was 
	student-based proposal to changing the constitution of Colombia. Each person who wishes to change the constitution 
	put an additional ballot on the congress election. The vote was not considered legal, but since there were more than 
	2 million votes to change the constitution, the government recognized the exercise as legitimate.")
l.events.create(title: "Cesar Gaviria is elected president", synopsis: '')
l.events.create(title: "Journalist kidnaping operation by the Extraditables", synopsis: "Francisco Santos, the chief 
	editor of El Tiempo the largest newspaper in Colombia, Maruja Pachon journalist and Sister in Law of Luis Carlos Galan 
	and Diana Turbay were kidnaped at the same time. The tree journalists were members of traditional political families. 
	Francisco Santos and Maruja Pachon were liberated, but Diana Turbay was murder the 25 of January 1991 by the 
	Extraditables. This kidnaping operation indented to create pressure for the elimination of the extradition 
	treaty with the USA.")


m = Year.create(year: 1991, user_rate: 335, event_title: "Assassination of Diana Turbay. Creation of the National 
	Constitutional Assembly. Pablo Escobar was arrested.")
m.cocaine_production = CocaineProduction.new(total: 805, bolivia: 220, colombia: 60, peru: 525)
m.events.create(title: "Assassination of Diana Turbay", synopsis: "Diana Turbay, journalist and director of the news 
	program Hoy X Hoy, was murder by the Extraditables. Moreover, Diana Turbay was the daughter of Julio Cesar Turbay, 
	president of Colombia from 1978 to 1982.")
m.events.create(title: "Creation of the National Constitutional Assembly", synopsis: "The National Constitutional 
	Assembly was created. This organ was created with the intention of drafting a new constitution for Colombia.")
m.events.create(title: "Pablo Escobar was arrested", synopsis: "After a negotiation with the government and the 
	juridical system, Pablo Escobar presents himself to the authorities on the condition that he will be kept in the 
	new prison La catedral. This new prison became a safe heaven for Pablo Escobar and his operations.")


n = Year.create(year: 1992, user_rate: 346, event_title: "Pablo Escobar escapes from La Catedral")
n.cocaine_production = CocaineProduction.new(total: 835, bolivia: 225, colombia: 60, peru: 550)
n.events.create(title: "Pablo Escobar escapes from La Catedral", synopsis: "After a media scandal about the luxury 
	inside La Catedral, the president decided to move Escobar to a military facility. The vice-Minister of Justice 
	participated with the army on the operative. The vice-Minister was taken hostage and Pablo and his mean escaped 
	before the army arrived.")


o = Year.create(year: 1993, user_rate: 331, event_title: "93 St Bomb. Pablo Escobar was killed.")
o.cocaine_production = CocaineProduction.new(total: 720, bolivia: 240, colombia: 65, peru: 415)
o.events.create(title: "93 St Bomb", synopsis: "Pablo Escobar exploited a Car bomb in the crowded 93 Street shopping mall")
o.events.create(title: "Pablo Escobar was killed.", synopsis: '')

p = Year.create(year: 1994, user_rate: 323, event_title: "Ernesto Samper is elected president. Andres Escobar was murdered")
p.cocaine_production = CocaineProduction.new(total: 745, bolivia: 255, colombia: 70, peru: 420)
p.events.create(title: "Ernesto Samper is elected president", synopsis: '')
p.events.create(title: "Andres Escobar was murdered", synopsis: "Andres Escobar, a member of the Colombian soccer team was 
	murdered a 10 days after he scored a self goal in the World Cup.")

q = Year.create(year: 1995, homicide_rate: 25398, user_rate: 321, event_title: "Guilberto Rodriguez Orejuela is Captured. 
	Initiation of process 8.000")
q.cocaine_production = CocaineProduction.new(total: 900, bolivia: 240, colombia: 210, peru: 450)
q.events.create(title: "Guilberto Rodriguez Orejuela is Captured", synopsis: "One of the leaders of the Cali Cartel was captured 
	by members of the Colombian police.")
q.events.create(title: "Initiation of process 8.000", synopsis: "A confession by President's Ernesto Samper accountant of 
	contribution from the Cali Cartel to the campaign originated a prolonged juridical process known as the process 8.000. 
	This was the biggest scandal a president has ever had. Nevertheless president Samper didn't resign or live his office 
	until his term finished in the year 1998.")


r = Year.create(year: 1996, homicide_rate: 26642, user_rate: 301, event_title: "Humberto de la Calle resignation. 
	Attack to the town las delicias")
r.cocaine_production = CocaineProduction.new(total: 770, bolivia: 215, colombia: 255, peru: 300)
r.events.create(title: "Humberto de la Calle resignation", synopsis: "Humberto de la Calle, the vicepresident desided 
	to resign based on the 8.000 process. De la calle was replace ex-minister Carlos lemos Simmons.")
r.events.create(title: "Attack to the town las delicias", synopsis: "Troops from FARC took control of the little town 
	of Las Delicias. 31 persons died and 60 were wonded by the incident.")


s = Year.create(year: 1997, homicide_rate: 25379, refugee_rate: 17397, user_rate: 275, event_title: "Mapiripan massacre. 
	Mandate for peace.")
s.cocaine_production = CocaineProduction.new(total: 680, bolivia: 200, colombia: 265, peru: 215)
s.events.create(title: "Mapiripan massacre", synopsis: "The paramilitary groups perform one of the bloodiest massacres 
	in Colombian history. Members of the paramilitary groups arrive to Mapiripan and took control of town. The paramilitary 
	torture and murdered more than 50 people, and displaced approximately 500 families.")
s.events.create(title: "Mandate for peace", synopsis: "In a non-formal vote, 10 million people voted a mandate for peace. 
	This mandate determined a set of rules for all actors in conflict in order to build a lasting peace. This mandate does 
	not hade a legal value, but it became a symbol of the popular interest for peace.")


t = Year.create(year: 1998, homicide_rate: 23096, refugee_rate: 70002, user_rate: 267, event_title: "Andres Pastrana was 
	elected president. Reunion between Andres Pastrana and Manuel Marulanda. Land demilitarization. Attack to Mitu")
t.cocaine_production = CocaineProduction.new(total: 690, bolivia: 150, colombia: 380, peru: 160)
t.events.create(title: "Andres Pastrana was elected president", synopsis: "Andres Pastrana based his presidential 
	campaign on the possibility of a peace negotiation with FARC. Soon after he started in office, he started the peace process.")
t.events.create(title: "Reunion between Andres Pastrana and Manuel Marulanda", synopsis: "The elected president and the 
	leader of FARC had a historical meeting that became the base of a peace negotiation.")
t.events.create(title: "Land demilitarization", synopsis: "Andres Pastrana, declared 42 thousand square kilometers as a 
	demilitarized zone that should be used to be the negotiating area.")
t.events.create(title: "Attack to Mitu", synopsis: "Mitu, Vaupes capital was attack by the FARC. During 72 hoers FARC 
	controlled the town torturing the local population. This attack happen one week before the government demilitarized 42 
	thousand square kilometers as a part of a peace negotiation.")

u = Year.create(year: 1999, homicide_rate: 24358, refugee_rate: 95526, user_rate: 271, event_title: "Official inauguration 
	of the peace negotiation with FARC. Massive kidnaping operation by ELN")
u.cocaine_production = CocaineProduction.new(total: 650, bolivia: 70, colombia: 460, peru: 120)
u.events.create(title: "Official inauguration of the peace negotiation with FARC", synopsis: "The official inauguration 
	of the peace negotiation happened with the absence of the FARC representatives.")
u.events.create(title: "Massive kidnaping operation by ELN", synopsis: "A command from ELN attacks a church in Cali kidnaping 
	70 persons present at the mass.")

v = Year.create(year: 2000, homicide_rate: 26540, refugee_rate: 268194, user_rate: 259, event_title: "El Salado Massacre. 
	Signature of Plan Colombia. Airplane Kidnaping by FARC")
v.cocaine_production = CocaineProduction.new(total: 770, bolivia: 80, colombia: 530, peru: 160)
v.events.create(title: "El Salado Massacre", synopsis: "The paramilitary groups the town of el Salado, torturing massacring 
	the population.")
v.events.create(title: "Signature of Plan Colombia", synopsis: "President Bill Clinton and Andres Pastrana signed the Plan 
	Colombia, a comprehensive military collaboration plan. This new alliance help to strength the capacity of the Colombian army.")
v.events.create(title: "Airplane Kidnaping by FARC", synopsis: "FARC kidnaps an airplane and lands it at the demilitarized 
	zone. After this terrorist act, the government temporary suspended the peace talks.")


w = Year.create(year: 2001, homicide_rate: 27840, refugee_rate: 388894, user_rate: 266, event_title: "Extension of the demilitarized zone")
w.cocaine_production = CocaineProduction.new(total: 1055, bolivia: 100, colombia: 700, peru: 255)
w.events.create(title: "Extension of the demilitarized zone", synopsis: "Even after the kidnaping an assassination 
	of the ex-minister of Culture, Consuelo Araujo, the government extended the demilitarized zone.")


x = Year.create(year: 2002, homicide_rate: 28837, refugee_rate: 442380, user_rate: 252, event_title: "End of the demilitarized zone. 
	Ingrid Betancourt kidnaped. ARC kidnaped 12 members of the Valle del Cauca Assembly.")
x.cocaine_production = CocaineProduction.new(total: 975, bolivia: 110, colombia: 585, peru: 280)
x.events.create(title: "End of the demilitarized zone", synopsis: "After FARC kidnaped Senator Luis Eladio Perez, the president decided 
	to put in to an end the peace talks and the distention zone.")
x.events.create(title: "Ingrid Betancourt kidnaped", synopsis: "Three days after the end of the demilitarizes zone, presidential 
	candidate Ingrid Betancourt was captured when traveling To San Jose de Apartado.")
x.events.create(title: "ARC kidnaped 12 members of the Valle del Cauca Assembly", synopsis: "At the Valle del Cauca Assembly FARC 
	kidnaped 12 members of the Assembly. In 2007, 11 members were murdered by FARC.")
x.events.create(title: "Alvaro Uribe is elected president", synopsis: "After the failed peace negotiations, Alvaro Uribe was 
	elected President. This new administration pushed for stronger war against FARC.")


y = Year.create(year: 2003, homicide_rate: 23523, refugee_rate: 250196, user_rate: 230, event_title: "Bomb at the Nogal Club. 
	Kidnaping of the American contractors. Santa Jose de Realito Negotiation")
y.cocaine_production = CocaineProduction.new(total: 790, bolivia: 100, colombia: 445, peru: 245)
y.events.create(title: "Bomb at the Nogal Club", synopsis: "FARC, put a car bomb at the famous Nogal Club. The Nogal Club is one of 
	the symbols of the traditional and powerful families of Colombia. 36 people died and more than 200 were wounded.")
y.events.create(title: "Kidnaping of the American contractors", synopsis: "After the destruction of their aircraft, FARC kidnaped 
	a group of American Contractors. They were kept captive until 2008.")
y.events.create(title: "Santa Jose de Realito Negotiation", synopsis: "The government started a peace talks with the 
	paramilitary at San Jose de Realito.")


z = Year.create(year: 2004, homicide_rate: 20210, refugee_rate: 232547, user_rate: 232, event_title: "Simon Trinidad Extradited")
z.cocaine_production = CocaineProduction.new(total: 755, bolivia: 115, colombia: 410, peru: 230)
z.events.create(title: "Simon Trinidad Extradited", synopsis: "Simon Trinindad, a member of FARC's secretariat was arrested and 
	extradited to the USA.")

aa = Year.create(year: 2005, homicide_rate: 18111, refugee_rate: 268839, user_rate: 233, event_title: "Rodrigo Granada was 
	captured at the border with Venezuela. The law on Justice and Peace is Approved")
aa.cocaine_production = CocaineProduction.new(total: 875, bolivia: 115, colombia: 500, peru: 260)
aa.events.create(title: "Rodrigo Granada was captured at the border with Venezuela", synopsis: "Rodrigo Granda a prominent member 
	of the FARC secretariat was captured at the Venezuelan border. There it's been acusation of luring from the Colombian army.")
aa.events.create(title: "The law on Justice and Peace is Approved", synopsis: "A justice and Peace law was approved by congress. 
	The objective of this law is to create a legal framework for the settlements with the Paramilitary. This law included a 
	maximum sentence of 5 years if all crimes were confesed.")


bb = Year.create(year: 2006, homicide_rate: 17479, refugee_rate: 286394, user_rate: 248, event_title: "Paramilitary demobilization")
bb.cocaine_production = CocaineProduction.new(total: 895, bolivia: 115, colombia: 515, peru: 165)
bb.events.create(title: "Paramilitary demobilization", synopsis: "Surrounded by polemic the peace talks with the paramilitary come 
	into an end. The groups demobilized and surrender to justice under the  Justice and Peace Law.")

cc = Year.create(year: 2007, homicide_rate: 17198, refugee_rate: 331238, user_rate: 221, event_title: "John Pinchao scape from 
	kidnaping. Rodrigo Granda liberation. Assassination of the members of the Valle Assembly")
cc.cocaine_production = CocaineProduction.new(total: 825, bolivia: 130, colombia: 485, peru: 210)
cc.events.create(title: "John Pinchao scape from kidnaping", synopsis: "After eight years captive, policeman John Pinchao, 
	escape from Kidnaping.")
cc.events.create(title: "Rodrigo Granda liberation", synopsis: "In an attempt to free Ingrid Betancourt, the President Nicholas 
	Sarcozy, requested the liberation of Rodrigo Granda. Rodrigo Granda was a member of the FARC Secretariat.")
cc.events.create(title: "Assassination of the members of the Valle Assembly", synopsis: "11 of the 12 members of the Valle Assembly 
	were killed in what the guerrilla thought was a rescue operation.")


dd = Year.create(year: 2008, homicide_rate: 16140, refugee_rate: 306313, user_rate: 165, event_title: "Clara Rojas and Consuelo 
	Gonzalez were liberated. Fenix Operation. Checkmate Operation")
dd.cocaine_production = CocaineProduction.new(total: 705, bolivia: 195, colombia: 295, peru: 215)
dd.events.create(title: "Clara Rojas and Consuelo Gonzalez were liberated", synopsis: "As a sign of good faith, FARC liberated 
	Clara Rojas and Consuelo Gonzalez. Clara's son (who was born captive) was supposed to be liberated, but it turns out he was 
	in the government's hands. The child was taken from the hands of a guerrilla helper in a hospital. The child was found with 
	signs of maltreatment and was handed to the government-protecting agency.")
dd.events.create(title: "Fenix Operation", synopsis: "In a military bombing in Ecuador the Colombian Army kill Raul Reyes, the 
	second most powerful man in FARC. This operation was performed in Ecuadorian soil, openly violating Ecuadorian sovereignty, this incident created tension between the two countries.")
dd.events.create(title: "Checkmate Operation", synopsis: "In a movie like operation, the Colombian government fooled FARC to hand in 13 of the most important kidnaped persons. The captives were supposed to take an international organization helicopter for a health brigade, wile they ride a military aircraft. No guns were fired at the operation. This operation liberated the American contractor, Ingrid Betancourt among others.")

ee = Year.create(year: 2009, homicide_rate: 15817, refugee_rate: 137263, user_rate: 164)
ee.cocaine_production = CocaineProduction.new()


# user_rate is measured in tons
# refugee_rate & homicide_rate is measure in number of people
# production_rate is measured in tons














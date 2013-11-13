Year.delete_all
	
a = Year.create(year: 1985, event_title: "Justice Palace Siege")
a.cocaine_production = CocaineProduction.new(total: 0)
a.events.create(title: "Justice Palace Siege", synopsis: "the 6 of November the M19 (a left wing guerrilla group) takes over the control of the Justice Palace. The guerrilla kidnapped Judges, personnel and visitors of the building for 2 days. The Colombian army responded to the attack with heavy weaponry and the center of Bogota became a battlefield between the guerrilla and the militaries. As a temporary solution, the government bans any information about the siege in the media and orders the transmission of a soccer match. The event left a total of 94 deaths and 11 'desaparecidos' (there is no clarity about what happen to this people) and the major destruction of the building. Most of the judges and members of the supreme courts were killed in the siege.")

h = Year.create(year: 1986, event_title: "Guillermo Cano Assassinated. Virgilio Barco is elected president")
h.cocaine_production = CocaineProduction.new(total: 710, bolivia: 220, colombia: 30, peru: 460)
h.events.create(title: "Guillermo Cano Assassination", synopsis: "Guillermo Cano was the director of El Espectador a national newspaper. El Espectador, was the only newspaper that report on the effects of narcotrafic and it's relationship with political power and violence. The assassination was considered a great violation to the freedom of speech in the country, nevertheless, El Espectador didn't stop the acusations and reports on the members of the big cartels.")
h.events.create(title: "Virgilio Barco is elected president")

i = Year.create(year: 1987, event_title: "Jaime Pardo Leal and Hector Abad Gomez assesinated. Carlos leader captured.")
i.cocaine_production = CocaineProduction.new(total: 740, bolivia: 220, colombia: 40, peru: 480)
i.events.create(title: "Jaime Pardo Leal assassination", synopsis: "The presidential candidate Jaime Pardo Leal, member of the UP party, a left wing political group originated from a peace process with FARC.  This political party was subject of a genocide a well organized targeted killing operation that killed the main leaders of the organization and destroy it's roots a social organization.")
i.events.create(title: "Hector Abad Gomez assassination", synopsis: "Hector Abad Gomez, a Human Rights and development leader was murder by the paramilitary groups. He was one of the most respected leaders in Antioquia. The day he was murder other two Human Rights leaders were murdered.")
i.events.create(title: "Carlos leader captured", synopsis: "Carlos Leader, a drug lord and member of the Cartel de Medellin was captured by the Colombian police and was extradited to the United States. This was one of the triggers of the war between the Colombian State and the Extraditables (the group of most wanted criminals for extradition).")


j = Year.create(year: 1988, user_rate: 660, event_title: "Andres Pastrana and  Alvaro Gomez Hurtado Kidnapped. Carlos Mauro Hoyos Assesinated.")
j.cocaine_production = CocaineProduction.new(total: 750, bolivia: 225, colombia: 55, peru: 470)
j.events.create(title: "Andres Pastrana Kidnapped", synopsis: "Andres Pastrana, a candidate for Mayor in Bogota, was kidnapped by the Extraditables (the group of most wanted criminals for extradition). He was chosen for being member of one of the most traditional political families in the country. His father, Misael Pastrana was president from 1970-1974 and Andres was elected president in 1998. The Extraditables wanted to negotiate the freedom of Andres for the elimination of extradition. The 25 of January he was rescued by the Colombian Army.")
j.events.create(title: "Carlos Mauro Hoyos Assesination", synopsis: "Carlos Mauro Hoyos was the General Prosecutor of Colombia. During his time in office, he prosecuted several cases of narcotrafic and narco related violence. He was kidnapped by the Extraditables (the group of most wanted criminals for extradition) on the same day as Andres Pastrana. As retaliation to the rescue of Andres Pastrana, he was murdered by the extraditables.")
j.events.create(title: "Alvaro Gomez Hurtado Kidnapped", synopsis: "The Conservative politician Alvaro Gomez Hurtado, was kidnapped by M19. At the beginning, the Guerrilla didn't recognize authority for the crime. Once M19 accepted the authority of the kidnapping, by asking for the beginning of a peace negotiation. This negotiation was the root for the new constitution in 1991.")

k = Year.create(year: 1989, user_rate: 576, event_title: "The Avianca Airplane bombing")
k.cocaine_production = CocaineProduction.new(total: 755, bolivia: 220, colombia: 70, peru: 465)
k.events.create(title: "The Avianca Airplane bombing")

l = Year.create(year: 1990, user_rate: 447)
l.cocaine_production = CocaineProduction.new(total: 775, bolivia: 220, colombia: 65, peru: 490)

m = Year.create(year: 1991, user_rate: 335)
m.cocaine_production = CocaineProduction.new(total: 805, bolivia: 220, colombia: 60, peru: 525)

n = Year.create(year: 1992, user_rate: 346)
n.cocaine_production = CocaineProduction.new(total: 835, bolivia: 225, colombia: 60, peru: 550)

o = Year.create(year: 1993, user_rate: 331)
o.cocaine_production = CocaineProduction.new(total: 720, bolivia: 240, colombia: 65, peru: 415)

p = Year.create(year: 1994, user_rate: 323)
p.cocaine_production = CocaineProduction.new(total: 745, bolivia: 255, colombia: 70, peru: 420)

q = Year.create(year: 1995, homicide_rate: 25398, user_rate: 321)
q.cocaine_production = CocaineProduction.new(total: 900, bolivia: 240, colombia: 210, peru: 450)

r = Year.create(year: 1996, homicide_rate: 26642, user_rate: 301)
r.cocaine_production = CocaineProduction.new(total: 770, bolivia: 215, colombia: 255, peru: 300)

s = Year.create(year: 1997, homicide_rate: 25379, refugee_rate: 17397, user_rate: 275)
s.cocaine_production = CocaineProduction.new(total: 680, bolivia: 200, colombia: 265, peru: 215)

t = Year.create(year: 1998, homicide_rate: 23096, refugee_rate: 70002, user_rate: 267)
t.cocaine_production = CocaineProduction.new(total: 690, bolivia: 150, colombia: 380, peru: 160)

u = Year.create(year: 1999, homicide_rate: 24358, refugee_rate: 95526, user_rate: 271)
u.cocaine_production = CocaineProduction.new(total: 650, bolivia: 70, colombia: 460, peru: 120)

v = Year.create(year: 2000, homicide_rate: 26540, refugee_rate: 268194, user_rate: 259)
v.cocaine_production = CocaineProduction.new(total: 770, bolivia: 80, colombia: 530, peru: 160)

w = Year.create(year: 2001, homicide_rate: 27840, refugee_rate: 388894, user_rate: 266)
w.cocaine_production = CocaineProduction.new(total: 1055, bolivia: 100, colombia: 700, peru: 255)

x = Year.create(year: 2002, homicide_rate: 28837, refugee_rate: 442380, user_rate: 252)
x.cocaine_production = CocaineProduction.new(total: 975, bolivia: 110, colombia: 585, peru: 280)

y = Year.create(year: 2003, homicide_rate: 23523, refugee_rate: 250196, user_rate: 230)
y.cocaine_production = CocaineProduction.new(total: 790, bolivia: 100, colombia: 445, peru: 245)

z = Year.create(year: 2004, homicide_rate: 20210, refugee_rate: 232547, user_rate: 232)
z.cocaine_production = CocaineProduction.new(total: 755, bolivia: 115, colombia: 410, peru: 230)

aa = Year.create(year: 2005, homicide_rate: 18111, refugee_rate: 268839, user_rate: 233)
aa.cocaine_production = CocaineProduction.new(total: 875, bolivia: 115, colombia: 500, peru: 260)

bb = Year.create(year: 2006, homicide_rate: 17479, refugee_rate: 286394, user_rate: 248)
bb.cocaine_production = CocaineProduction.new(total: 895, bolivia: 115, colombia: 515, peru: 165)

cc = Year.create(year: 2007, homicide_rate: 17198, refugee_rate: 331238, user_rate: 221)
cc.cocaine_production = CocaineProduction.new(total: 825, bolivia: 130, colombia: 485, peru: 210)

dd = Year.create(year: 2008, homicide_rate: 16140, refugee_rate: 306313, user_rate: 165)
dd.cocaine_production = CocaineProduction.new(total: 705, bolivia: 195, colombia: 295, peru: 215)

ee = Year.create(year: 2009, homicide_rate: 15817, refugee_rate: 137263, user_rate: 164)
ee.cocaine_production = CocaineProduction.new()


# user_rate is measured in tons
# refugee_rate & homicide_rate is measure in number of people
# production_rate is measured in tons














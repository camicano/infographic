Year.delete_all
	

h = Year.create(year: 1986)
h.cocaine_production = CocaineProduction.new(total: 710, bolivia: 220, colombia: 30, peru: 460)

i = Year.create(year: 1987)
i.cocaine_production = CocaineProduction.new(total: 740, bolivia: 220, colombia: 40, peru: 480)

j = Year.create(year: 1988, user_rate: 660)
j.cocaine_production = CocaineProduction.new(total: 750, bolivia: 225, colombia: 55, peru: 470)

k = Year.create(year: 1989, user_rate: 576)
k.cocaine_production = CocaineProduction.new(total: 755, bolivia: 220, colombia: 70, peru: 465)

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














t=0
cos=math.cos
sin=math.sin
cls()

for x=0,240 do
	for y=0,136 do
		pix(x,y,x)
	end
end

function TIC()
	t=t+0.05
	
	-- circles
	for i=1,5 do
		a=t+math.pi *2/5 * i
		circ(180+40*cos(a),68+40*sin(a),
		7+sin(t)*3,2)
	end
	
	-- pixel manipulation
	for i=0,32639 do
		local x=math.floor(i%240)
		local y=math.floor(i/240)
		local c=pix(x+1,y)
		pix(x,y,c+1)
	end
end

-- <WAVES>
-- 000:00000000ffffffff00000000ffffffff
-- 001:0123456789abcdeffedcba9876543210
-- 002:0123456789abcdef0123456789abcdef
-- </WAVES>

-- <SFX>
-- 000:000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000304000000000
-- </SFX>

-- <TRACKS>
-- 000:100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
-- </TRACKS>

-- <PALETTE>
-- 000:1a1c2c5d275db13e53ef7d57ffcd75a7f07038b76425717929366f3b5dc941a6f673eff7f4f4f494b0c2566c86333c57
-- </PALETTE>


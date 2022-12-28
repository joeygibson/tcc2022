text="Tiny Code Christmas"

function TIC()
	cls()

	for y=-68,67 do
		for x=-120,119 do
			X=(math.atan2(y,x)+math.pi)*2.546
			Y=300//(x*x+y*y+1)^0.5
			t=time()//100
			c=(X//1)~(Y//1)+t
			pix(120+x,68+y,c&11)
		end
	end

	for i=1,#text do		
		x=(i-time()/999)%64*20
		if x>600 then x=x-600 end
		y=math.floor(55+math.sin((x+10)/50) * 50)
		if (i%2==0) then c=6 else c=2 end
		print(string.sub(text,i,i),x,y,c,true,3)
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


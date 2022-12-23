pico-8 cartridge // http://www.pico-8.com
version 38
__lua__
text="tiny code christmas!"
function _draw()
	cls()

	for i=1,#text do
		rectfill(0,0,96,16,0)
		x=20+4*i-t()*20
		if (x<0) then x=127-(abs(x)%128) end
		print(t()..", "..x,0,0,2)
		
		print(text[i],
			x,
			60+sin(i/9)*10,
			2)
	end
end

__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

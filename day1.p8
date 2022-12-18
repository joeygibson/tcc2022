pico-8 cartridge // http://www.pico-8.com
version 38
__lua__

trunk_width = 4
trunk_height = 15
trunk_color = 4

tree_bottom_width = 20
tree_section_height = 15

function _init()
	snowflakes = {}

	for i=1, 75 do
		x = flr(rnd(127))
		y = flr(rnd(100))

		flake = {
			x = x,
			y = y
		}

		add(snowflakes, flake)
	end
end

function _draw()
	cls(1)
	rectfill(0, 100, 127, 127, 3)

	rectfill(127/2-trunk_width, 100-trunk_height, 127/2+trunk_width, 100, trunk_color)

	for flake in all(snowflakes) do
		pset(flake.x, flake.y, 7)
	end	

	-- bottom section
	for i=0, 15 do
		x1 = (tree_bottom_width / 2) + (i * 2)
		y1 = 100-trunk_height - i
		x2 = 127-(tree_bottom_width / 2) - (i * 2)
		y2 = 100-trunk_height - i
		if i % 2 == 0 then
			c = 3
		else
			c = 11
		end
		line(x1, y1, x2, y2, c)
	end

	-- middle section
	for i=0, 15 do
		x1 = ((tree_bottom_width + 20) / 2) + (i * 2)
		y1 = 100-trunk_height - i - 15
		x2 = 127-((tree_bottom_width + 20) / 2) - (i * 2)
		y2 = 100-trunk_height - i - 15
		if i % 2 == 0 then
			c = 3
		else
			c = 11
		end
		line(x1, y1, x2, y2, c)
	end

	-- middle section
	for i=0, 15 do
		x1 = ((tree_bottom_width + 40) / 2) + (i * 2)
		y1 = 100-trunk_height - i - 30
		x2 = 127-((tree_bottom_width + 40) / 2) - (i * 2)
		y2 = 100-trunk_height - i - 30
		if i % 2 == 0 then
			c = 3
		else
			c = 11
		end
		line(x1, y1, x2, y2, c)
	end

	-- top section
	for i=0, 7 do
		x1 = ((tree_bottom_width + 60) / 2) + (i * 3)
		y1 = 100-trunk_height - i - 45
		x2 = 127-((tree_bottom_width + 60) / 2) - (i * 3)
		y2 = 100-trunk_height - i - 45
		if i % 2 == 0 then
			c = 3
		else
			c = 11
		end
		line(x1, y1, x2, y2, c)
	end

	-- ornaments
	circfill((tree_bottom_width / 2), 102 - trunk_height, 3, 8)
	circfill((tree_bottom_width / 2) + 10, 87 - trunk_height, 3, 12)

	circfill((tree_bottom_width / 2) + 20, 72 - trunk_height, 3, 10)
	circfill(127 - ((tree_bottom_width / 2) + 20), 72 - trunk_height, 3, 8)

	circfill((tree_bottom_width / 2) + 30, 57 - trunk_height, 3, 8)
	circfill(127 - ((tree_bottom_width / 2) + 30), 57 - trunk_height, 3, 10)

	-- star
	rect(63, 10, 64, 33, 7)
	rectfill(63-10, 20, 63+11, 22, 7)
	circfill(64, 20, 5, 10)

	-- snowman's body
	circfill(120, 120, 30, 7)
	circfill(120, 80, 20, 7)
	circfill(120, 53, 10, 7)
	circfill(116, 50, 1, 0)
	circfill(124, 50, 1, 0)
	circfill(120, 55, 2, 9)

	-- snowman's arm
	line(100, 75, 80, 60, 4)
	line(80, 64, 85, 65, 4)
	line(85, 65, 85, 60, 4)
end
__gfx__
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00077000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000
00700700000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000

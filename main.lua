local block1 = 0
local block2 = 0
local block3 = 0
local block4 = 0
local block5 = 0
local block6 = 0
local block7 = 0
local block8 = 0
local block9 = 0
local cluster1 = 0
local cluster2 = 0
local cluster3 = 0
local overall = 0
local function update3()
	if cluster3 == 0 then
		block7 = 0
		block8 = 0
		block9 = 0
	elseif cluster3 == 1 then
		block7 = 1
    	block8 = 1
		block9 = 1
	end
end
local function update2()
	if cluster2 == 0 then
		block4 = 0
		block5 = 0
		block6 = 0
	elseif cluster2 == 1 then
		block4 = 1
		block5 = 1
		block6 = 1
	end
end
local function update1()
if cluster1 == 0 then
	block1 = 0
	block2 = 0
	block3 = 0
elseif cluster1 == 1 then
	block1 = 1
	block2 = 1
	block3 = 1
end
end
local function clear()
		cluster1 = 0
		cluster2 = 0
		cluster3 = 0
		update1()
		update2()
		update3()
end
local function debugclusters()
print("To use this, it will say how many cpus are enabled in each cluster, it also does say the total amount underneath.")
	print("Cluster one: " ..block1 + block2 + block3 .. " Cluster two: " ..block4 + block5 + block6 .. " Cluster Three: " ..block7 + block8 + block9)
	print("Total: ".. block1 + block2 + block3 + block4 + block5 + block6 + block7 + block8 + block9)
end

cluster1 = 1
update1()
debugclusters()
wait(2)
clear()
debugclusters()

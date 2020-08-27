Px = 7.75; 
Py = 1.95; 
Pz = 1.8;
a1 = 3; 
a2 = 5;
d1 = 2;

D = ()
Th2_a = atan2d( +(sqrt(1-D^2)),D )
Th2_b = atan2d( -(sqrt(1-D^2)),D )
Th2_c = -th3_a

L1 = link([0 a1 Th1_a 0, 0]);
L2 = link([0 a2 Th2_a 0, 0]);
L3 = link([0 a2 0 d, 1]);
Twolinks_Robot = robot({L1 L2 L3});
T03_a = fkine(Twolinks_Robot, [ (Th1_a/180)*pi (Th2_a/180)*pi ]);
T03_b = fkine(Twolinks_Robot, [ (Th1_b/180)*pi (Th2_b/180)*pi ]); 

P3_End_a = T03_a*[0;0;0;1]
P3_End_b = T03_b*[0;0;0;1]
P3_End_c = T03_c*[0;0;0;1]

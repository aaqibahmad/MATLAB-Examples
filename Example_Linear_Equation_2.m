clear; clc;
syms x y z

eqn11 = 2*x + y + z == 2;
eqn22 = -x + y -z == 3;
eqn33 = x + 2*y + 3*y == -10;
sol = solve([eqn11, eqn22, eqn33],[x,y,z]);
xSol = sol.x;
ySol = sol.y;
zSol = sol.z;
xSol
ySol
zSol

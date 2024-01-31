syms Vm Va Vout go gm Vin VinN VinP

eq1 = (Vout-Va)*go + Vout*go + (VinN-Va)*gm +Vm*gm  == 0;
eq2 = (Vm-Va)*go + Vm*go + (VinP-Va)*gm +Vm*gm  == 0;
eq3 = Va*go + (Va-Vm)*go +(Va-Vout)*go - (VinP-Va)*gm - (VinN-Va)*gm == 0;
eq4 = Vin == VinP-VinN;

out = solve([eq1,eq2,eq3,eq4], [Vout,Vm,VinP,VinN,Va])
out.Vout

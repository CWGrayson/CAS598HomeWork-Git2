%% Creating Capital Cost Curves

tdisplay = linspace(0,5,365*5); % Creaes the time dependent variable for both performing math and creating the plotting X Axis option

factoryCost = 10000000; %Raw cost of the factory
factoryConstructionTime = 2; % Construction time for the factory
constructionIntrestRate = 0.07;

capitalRequirments = ((factoryCost/factoryConstructionTime)*tdisplay(1:(365*2)) +(factoryCost*exp(constructionIntrestRate*tdisplay(2)))/(365*2));

prodcutionRate = 24000; %Production rate UnitsCO3/Year
productionCost = 800;   %$/UnitCO3
serviceLife    = 5; %Years
productionTime = linspace(0,3,365*3);
interumCapitalRequirments = prodcutionRate*productionCost*productionTime + 800*exp(constructionIntrestRate*serviceLife)+capitalRequirments(365*2);


capitalRequirments = [capitalRequirments,interumCapitalRequirments];

plot(tdisplay(1:(365*5)),capitalRequirments)
xlabel("Time, Years");
ylabel("Capital Requirments, $")
title("Capital Requirments")
fontsize(120, "pixels");

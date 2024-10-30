%% Creating Capital Cost Curves

tdisplay = linspace(0,5,365*5); % Creaes the time dependent variable for both performing math and creating the plotting X Axis option

factoryCost = 10000000; %Raw cost of the factory
factoryConstructionTime = 2; % Construction time for the factory
constructionIntrestRate = 0.07;

capitalRequirments = ((factoryCost/factoryConstructionTime)*tdisplay(1:(365*2)) +(factoryCost*exp(constructionIntrestRate*tdisplay(2)))/(365*2));

plot(tdisplay(1:(365*2)),capitalRequirments)
xlabel("Time, Years");
ylabel("Capital Requirments, $")
title("Capital Requirments")

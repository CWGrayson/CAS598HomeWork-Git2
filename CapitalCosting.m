%% Creating Capital Cost Curves

t = 1:365*5;
tdisplay = linspace(0,5,365*5); % Creaes the X Axis option

factoryCost = 10000000; %Raw cost of the factory
factoryConstructionTime = 2; % Construction time for the factory
constructionIntrestRate = 0.07;

capitalRequirments = ((factoryCost/factoryConstructionTime)*tdisplay(1:(365*2)))+factoryCost*exp(constructionIntrestRate*tdisplay(1:365*2));



td = 0:0.01:360;
plot(td,cosd(td),td,0.2*cosd(2*td),td,cosd(td)+0.2*cosd(2*td));
legend('Primary Force','Secondary Force','Primary+Secondary');
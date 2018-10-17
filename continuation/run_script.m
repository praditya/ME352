% circle continuation example
close all
clear all
clc

global gp globalsolution

gp=1; newton('circplt',1)
globalsolution=[ans;gp];

gp=0.02; newton('circplt',1)
globalsolution=[globalsolution,[ans;gp]]
 
run_continuation('circplt',312)
 plot(globalsolution(1,:),globalsolution(2,:)); axis('image')
 
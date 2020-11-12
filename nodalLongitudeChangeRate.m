function [dOmega] = nodalLongitudeChangeRate(R,i,h,gs)
%----------------IN progress----------------%
%Function to allow for Inclinations other than Sun SYnchronous
%Calculates dOmega from orbital elements
%Inputs: R,i,h,gs
%Outputs: dOmega
%----------------IN progress----------------%
J2 = 0.00108;
dOmega = (3/2) * J2 * R ^3 * sqrt(gs) * ( cos(i)/(R+h)^(7/2));


end


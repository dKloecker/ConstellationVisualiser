function [coordinates,phi,lambda ] = getSatPosition(r,a,e,v,w,omega,i,lmabda0)
%calculation of XYZ coordinates of satelite in orbit using euler angles
%takes angles in rad
%THIS PAPER WAS USED FOR EQUATION
%http://fgg-web.fgg.uni-lj.si/~/mkuhar/Pouk/SG/Seminar/Vrste_tirnic_um_Zemljinih_sat/Orbit_and_Ground_Track_of_a_Satellite-Capderou2005.pdf


coordinates = (a*(1-e^2)/(1+e*cos(v) )) * ...
    [(cos(omega) * cos( w + v) - sin(omega)*sin(w+v)*cos(i));
    (sin(omega) * cos( w + v ) + cos(omega)*sin(w+v)*cos(i));
    (sin(w + v)*sin(i))];

%Now calculate sat position as function of longitude and latitude

X = coordinates(1);
Y = coordinates(2);
Z = coordinates(3);

%phi describes Latitude
phi = asin(Z/r);

%Lambda describes longitude
lambda = lmabda0 + acos(X/(r*cos(phi)));



end


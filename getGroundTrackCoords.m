function [lat,lon] = getGroundTrackCoords(lat0,lon0, i, Po, Pe, omegaDot, t)
%Function to obtain longitude and latitude from current Orbital Elements
%Inputs: lat0,lon0, i, Po, Pe, omegaDot, t
%Outputs: lat,lon


lat = lat0 + asin( sin(i)*sin( (2*pi*t)/Po));

lon = lon0 + atan( cos(i)*tan( (2*pi*t)/Po ) ) - (2*pi*t)/Pe + omegaDot * t;


end


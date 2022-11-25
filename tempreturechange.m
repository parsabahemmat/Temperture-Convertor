clc
clear all
close all
temp = input('Enter the temprature without unit:');
unit = 's'
while (~matches(unit , 'k')&& ~matches(unit , 'f')&& ~matches(unit , 'c'))
     unit = input('Enter the current unit:','s');
if(matches(unit, 'c'))
     tempK = temp + 273.15;
     tempC = 'units maches';
     tempF = (temp*1.8)+32;
elseif (matches(unit, 'f'))
     tempC = (temp-32)*5.9;
     tempK = 5.9*(temp-32)+273.15;
     tempF = 'units maches';
elseif(matches(unit, 'k'))
     tempC = temp-273.15;
     tempK = 'units maches';
     tempF = 1.8*(temp-273.15);
else
    fprintf('The entered unit is not in the correct format!')
end
end
tounit = input('enter the unit u want to be converted to:', 's');
if(matches(tounit, 'c'))
    disp(tempC)
elseif (matches(tounit, 'f'))
    disp(tempF)
elseif(matches(tounit, 'k'))
    disp(tempK)
else
    fprintf('The entered unit is not in the correct format!')
end
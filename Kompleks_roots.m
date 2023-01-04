
%Script that print and plot the solutions of 
% equations on the form z^n = a + bi

%Removes all items
close all

% exponent
naturlig = input('Give number of complex solutions for n: ');

%complex number
a = input('Give the value for a (real part): ');
b = input('Give the value for b ( imaginary part): ');

% finds the absolute value
r= sqrt(a.^2+b.^2);

%finds the "phase"
tetta = atan(b/a);

% Adds pi whose number is less than 0
if a < 0
    tetta =tetta+pi;
end

hold on
grid on
axis square

%Finds and plots solutions
for c = 0:naturlig -1
    z= r.^(1/naturlig).*exp(1i*(tetta+2*pi*c)/naturlig)
    plot(real(z),imag(z),'ro','linewidt',2)
end
hold off




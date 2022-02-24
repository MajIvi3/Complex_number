
%Skript som printer og plotter løsningene til 
% %ligninger på formen z^n=a

%Fjerner alle figurer
close all
%eksponent
naturlig = input('Gi verdien for n: ');
%komplekstall
a = input('Gi en real verdi a: ');
b = input('Gi en verdi b: ');
%finner lengden
r= sqrt(a.^2+b.^2);
%finner tetta
tetta = atan(b/a);
% Legger pi hvis tall er mindre en 0
if a < 0
    tetta =tetta+pi;
end

hold on
grid on
axis square
%Finner og plotter løsninger
for c = 0:naturlig -1
    z= r.^(1/naturlig).*exp(1i*(tetta+2*pi*c)/naturlig)
    plot(real(z),imag(z),'ro','linewidt',2)
end
hold off




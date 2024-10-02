n=18;
Delta=(1/(1200))/200;
Vector_Tiempo=0:Delta:0.032;
Vector_Amplitud=0.7:-(0.7-0.3)/n:0.3;
Vector_Amplitud_1=[1,Vector_Amplitud];
Vector_Amplitud=Vector_Amplitud_1;

Vector_Resultados=[];



x = linspace(0,0.032);
y = cos(120*pi*x);
plot(x,y)

i=1;


for i=1:1:n
    y = cos(120*pi*x*i)*Vector_Amplitud(i);
    figure()
    plot(x,y)
    x_1=Vector_Tiempo;
y_1 = cos(120*pi*x_1*i)*Vector_Amplitud(i);
Muestreo=stem(x_1,y_1);

Vector_Resultados(:,i)=Muestreo.YData;
end

for i=1:1:length(Vector_Resultados)
Vector_Resultados_Suma(i)=sum(Vector_Resultados(i,:));
end


figure()
x = linspace(0,0.032);
y = cos(120*pi*x);
plot(x,y)
hold on
plot(x_1,Vector_Resultados_Suma)
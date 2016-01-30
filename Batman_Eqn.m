
%Defining the 6 terms of Batman equation
f1='((x/7)^2)*sqrt((abs(abs(x)-3))/(abs(x)-3))+(y/3)^2*sqrt(abs(y+3*(sqrt(33))/7)/(y+3*(sqrt(33))/7))-1';
f2='abs(x/2)-((3*sqrt(33)-7)/112)*x^2-3+sqrt(1-(abs(abs(x)-2)-1)^2)-y';
f3='9*sqrt((abs((abs(x)-1)*(abs(x)-0.75)))/((1-abs(x))*(abs(x)-0.75)))-8*abs(x)-y';
f4='3*abs(x)+0.75*sqrt(abs((abs(x)-0.75)*(abs(x)-0.5))/(0.75-abs(x))*(abs(x)-0.5))-y';
f5='2.25*sqrt((abs((x-0.5)*(x+0.5)))/((0.5-x)*(0.5+x)))-y';
f6='(6*sqrt(10)/7)+(1.5-0.5*abs(x))*sqrt((abs(abs(x)-1))/(abs(x)-1))-(6*sqrt(10)/14)*sqrt(4-(abs(x)-1)^2)-y';

figure; %launch a new figure
axis([-8 8 -5 5]); %set axes limits 
hold on; %hold on to plot all the lines in one figure

%plot all the terms and specify the interval over which each term is
%defined
h1_1=ezplot(f1,[-8 -3 -3/7*sqrt(33) 10]);
h1_2=ezplot(f1,[3 8 -3/7*sqrt(33) 10]);

h2=ezplot(f2,[-4 4]);

h3_1=ezplot(f3,[0.75 1 0 3]);
h3_2=ezplot(f3,[-1 -0.75 0 3]);

h4_1=ezplot(f4,[0.5 0.75 0 3]);
h4_2=ezplot(f4,[-0.75 -0.5 0 3]);

h5=ezplot(f5,[-0.5 0.5 0 3 ]);

h6_1=ezplot(f6,[1 3 0 3 ]);
h6_2=ezplot(f6,[-3 -1 0 3 ]);

set([h1_1,h1_2,h2,h3_1,h3_2,h4_1,h4_2,h5,h6_1,h6_2],'color','b','Linewidth',2) %set the color and the linewidth of all the lines

title('Batman');
xlabel('');
ylabel('');

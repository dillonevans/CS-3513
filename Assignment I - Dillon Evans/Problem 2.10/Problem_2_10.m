a = 2;
b = 5;
x=0:pi/40:pi/2;
y = b.*(exp(-a.*x)).*sin(b.*x).*(0.012*realpow(x,4)-0.15*realpow(x,3)+0.075*realpow(x,2)+2.5*x);
z=y.*y;
w=[x,y,z];
format short g;
display(w);
hold on;
plot(x,y,'--rp','LineWidth',1.5,...
                'MarkerEdgeColor','r',...
                'MarkerFaceColor','w',...
                'MarkerSize',14);
plot(x,z,'-bs', 'MarkerEdgeColor','b', 'MarkerFaceColor', 'g');
legend('y vs x', 'z vs x');
hold off;

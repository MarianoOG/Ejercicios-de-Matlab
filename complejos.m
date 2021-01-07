col=20;m=400;r=10;l=0.3;
cx=0.25;cy=0;
x=linspace(cx-1,cx+1,m);
y=linspace(cy-1,cy+1,m);
[X,Y]=meshgrid(x,y);
z=zeros(m)+eps;
c=X+i*Y;
for k=1:col;
    z=z.^z+c;
    w=exp(-abs(z));
end
colormap jet(256);
pcolor(w);
shading flat
axis('square','equal','off')
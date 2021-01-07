a=zeros(30,30);
a(:,15)=0.2*ones(30,1);
a(7,:)=0.1*ones(1,30);
a(15,15)=1;
el=30;
for az=-37.5:15:-37.5+1000
    mesh(a),view(az,el)
    pause(0.5)
end

RT=ObtenerMatrizParaEntrenar();


net=newff(RT(2:end,:),RT(1,:),[6,5,3]);




%The network is trained for up to 50 epochs to an error goal of 0.01 and then resimulated. 
net45.trainParam.epochs = 50;
net45.trainParam.goal = 0.01;
net45 = train(net3,yt(2:4,:),yt(1,:));


%faltaaaaa  save('net1','net','-mat');       se grava y se carga en el
%cuadrito sin tener q ponerlo en comandos habia que ponerle doubles no
%ints. imwrite(uint8(120*onn),'pruebasave.png','png')  permute
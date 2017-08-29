function[im]=Convolucion(imagen,Fil)
img=imread(imagen);
[x,y,z]=size(img);
[U,V]=size(Fil);
if mod(U,2)==0
    fil=Fil(1:end-1,1:end-1);
    k=(U-2)/2;
else
    fil=Fil;
    k=(U-1)/2;
end
m=[-k:k];
n=[-k:k];
im=zeros(x,y,z);
for j=1:x
    for i=1:y
        R=0;
        G=0;
        B=0;
        for u=1:(2*k+1)
            for v=1:(2*k+1)
                try
                    R=R+img(j-m(u),i-n(v),1)*fil(u,v);
                    G=G+img(j-m(u),i-n(v),2)*fil(u,v);
                    B=B+img(j-m(u),i-n(v),3)*fil(u,v);
                catch 
                   
                end
            end
        end
        if R>255
            R=255;
        elseif R<0
            R=0;
        end
        if G>255
            G=255;
        elseif G<0
            G=0;
        end
        if B>255
            B=255;
        elseif B<0
            B=0;
        end
     im(j,i,1)=R;
     im(j,i,2)=G;
     im(j,i,3)=B;
    end
end

for j=1:x
    for i=1:y
        img(j,i,:)=im(j,i,:);
    end
end
imshow(img)

end
        
        
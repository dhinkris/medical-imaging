function [dilatedimage]=dilation(img,modifyimg)
for i=2:19
    for j=2:19
        if (img((i-1),j) ~= 0) || (img((i+1),j) ~= 0) || (img(i,(j-1)) ~= 0) || (img(i,(j+1)) ~= 0)
                modifyimg(i,j)=256;
        end
    end
end
dilatedimage=modifyimg;
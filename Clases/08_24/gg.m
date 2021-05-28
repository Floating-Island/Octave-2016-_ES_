function y=gg(x)
    y=zeros(size(x));
    for arr=1:length(x)
            y(arr)=g(x(arr));
    end
return;
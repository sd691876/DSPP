function [out, t]=Hugo_filter(h,x)
        out=zeros(1,length(x)+length(h)-1); %convolution length
        y=x'*h;
        for i = 1:length(x)
            for k= 1:length(h)
                out(i+k-1)=out(i+k-1)+y(i,k);
            end
        end
    t=1:length(out);
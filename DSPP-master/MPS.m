function [mpsu,mpsd] = MPS(num,den) %Minimum phase system
    regu = roots(num);
    regd = roots(den);
    mpsu = 1;
    mpsd = [];
    for i = 1 : length(regu)
        if(regu(i)>1)
            mpsu(1) =  mpsu(1)*(-regu(i));
            mpsu = [mpsu 1/regu(i)];
        else
            mpsu = [mpsu regu(i)];
        end
    end 
    for i = 1 : length(regd)
        if(regd(i)>1)
            mpsu(1) =  mpsu(1)/(-regd(i));
            mpsd = [mpsd 1/regd(i)];
        else
            mpsd = [mpsd regd(i)];
        end
    end

end
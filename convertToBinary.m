function [vekbin] = convertToBinary(num)

vekbin = [0 0 0 0 0]; %dibuat vektor nol berukuran 5 
i = 0;                %karena nilai max (31) terdiri dari 5 digit biner saja

while i <=4     
    if mod(num, 2) == 1
        vekbin(5-i) = 1; %input 
    end
    num = floor(num/2);
    i = i+1;
end
end

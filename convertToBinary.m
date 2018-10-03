function convertToBinary(num)
  %insert function here
num = input('enter decimal: '); % kalo ada di main, abaikan 

i = 1;
remind = rem(num, 2);
biner(i) = num2str(remind(i));

flooring = floor(num/2);
if num <= 31
  while flooring >= 2
    num = flooring;
    flooring = floor(num/2);
    remind = rem(num, 2);
    i = i + 1;
    biner(i) = num2str(remind);
  end
else
    fprintf('your input must in range of 1-31\n')
    break
end

biner(i + 1) = num2str(flooring);
biner = fliplr(biner);

vekbin = biner-'0'; % ini vektornya

end

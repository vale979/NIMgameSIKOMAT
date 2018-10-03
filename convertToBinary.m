function convertToBinary(num) %hey there, we have 3 num to be converted into array of binary!

num = input('enter decimal: '); % kalo ada di main, abaikan 

i = 1; % jadi awalnya ada i untuk indeks vektor "biner"
reminder = rem(num, 2); % bilangan ini kita bagi 2 terus dicari remindernya
biner(i) = num2str(reminder(i)); %kita isi vektor "biner" ini dengan remindernya

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
end

biner(i + 1) = num2str(flooring);
biner = fliplr(biner);

vekbin = biner-'0'; % ini vektornya

end

% misal 12
% bagi 2, reminder = 0
% biner(1) = 0
% flooring = 6
% masuk while
% num = 6
% flooring = floor(6/2) = 3
% 6 bagi 2, reminder jadi 0
% i jadi 2
% biner(2) = 0
% masih di loop soalnya flooring = 3, >= 2 soalnya 
% num = 3
% floor(3/2)= 1, flooring = 1 jadi
% reminder = rem(3/2) = 1
% i jadi 3
% biner(3) = 1
% keluar loop while soalnya flooring = 1
% biner(3+1) = 1
% nah dari sini kita dapet biner dalam 4 digit, 01011
% kita balik soalnya dia ngisi dari depan, sedangkan biner bacanya dari belakang, jadi 1100
% dipecah digitnya jadi 1 1 0 0 (itu cara mecahnya pake yang -'0')
% dapet representasi biner 12


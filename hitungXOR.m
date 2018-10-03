function res = hitungXOR(numA, numB, numC)
  %insert function here
  %insert pemanggilan fungsi convertbiner here
  %ubah biner ke vektor biner here
  
  %note: vektor biner dinamakan vekbinA, vekbinB, dan vekbinC
  sumVekbin = vekbinA + vekbinB + vekbinC;
  jumlahXOR = mod(sumVekbin,2); %hasil penjumlahan XOR dalam bentuk biner
  
  %convert biner ke desimal
   res = 0;
   pjXOR = length(jumlahXOR);
   for i= 0:pjXOR-1
     unsurjXOR = jumlahXOR(pjXOR-i);
     polDua = 2^i;  %perpangkatan 2
     res = res + unsurjXOR*polDua;  %hasil akhir, res = jumlahXOR dalam desimal
   end
  end

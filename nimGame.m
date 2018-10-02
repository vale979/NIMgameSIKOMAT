function nimGame()
  %inisialisasi vector yang akan dipakai utk converter angka biner
  a = [];
  b = [];
  c = [];
  verifiedStart = false;
  while(verifiedStart ~= true)
    %rig the game so the player wont have winning position at start
    stoneAmount = randi(maxStone,1,3);
    if(hitungXOR(stoneAmount(1), stoneAmount(2), stoneAmount(3)) == 0)
      verifiedStart = true;
    end
  end;
  
  %narasi awal permainan
  namaPlayer = input('Huehehee... Selamat datang! Siapa nama anda, wahai penantang?\n');
  fprintf('Selamat datang, wahai %s!\n',namaPlayer);
  fprintf('Raja iblis telah kembali. Ia menawan banyak sekali jiwa dalam kegelapan.\n');
  fprintf('Kau adalah kesatria pemberani yang akan menantang Raja Iblis. Kau adalah harapan terakhir umat manusia..\n');
  fprintf('Namun, Raja Iblis tidak suka kekerasan. Oleh karena itu kau harus mengalahkannya dalam permainan logika.\n');
  fprintf('Raja Iblis menantangmu untuk bermain 3-Heap Nim Game.\n');
  fprintf('Dapatkah kau mengalahkannya untuk menyelamatkan umat manusia dari kegelapan?\n');
  fprintf('Kita mulai saja permainannya. HAHAHA!\n');
  
  fprintf('Peraturan: Siapa yang mengambil batu terakhir yang menang.\n');
  fprintf('Setiap turn kamu hanya dapat mengambil dari 1 heap.\n');
  fprintf('Jangan curang, ini bukan CTF (-_- ").\n');
  
  fprintf('Game dimulai!\n');
  fprintf('HEAP 1: %i\n', stoneAmount(1));
  fprintf('HEAP 2: %i\n', stoneAmount(2));
  fprintf('HEAP 3: %i\n', stoneAmount(3));
  
  %ini flip-flop antara 0/1. Kalau 1 berarti giliran player yg jalan. Kalau 0 giliran COM.
  giliranJalan = 1;

  %inti gamenya
  while(endGameCondition(stoneAmount(1), stoneAmount(2), stoneAmount(3)) == false)
    if(giliranJalan == 1)
      chooseHeap = input('Mau ambil dari tumpukan yang mana?\n');
      if((chooseHeap > 3) || (chooseHeap < 0))
        %Kalau input ga valid
        fprintf('Inputmu ga valid. Kamu pikir ini CTF?\n');
        fprintf('Saya ga suka dicurangi begini, kamu kalah.\n');
        return;
      end
      chooseAmount = input('Oke, mau ambil berapa?');
      if((chooseAmount > stoneAmount(chooseHeap)) || (chooseAmount <= 0))
        %Kalau input ga valid
        fprintf('Inputmu ga valid. Kamu pikir ini CTF?\n');
        fprintf('Saya ga suka dicurangi begini, kamu kalah.\n');
        return;
      end
      fprintf('Oke, kamu ambil %i batu dari heap ke-%i\nJangan nyesal ya..',chooseAmount,chooseHeap);
      giliranJalan = 0;
    else
      %insert COM routine here
    end
  end
end

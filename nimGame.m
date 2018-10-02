function nimGame()
  %inisialisasi vector yang akan dipakai utk converter angka biner
  a = [];
  b = [];
  c = [];
  verifiedStart = false;
  while(verifiedStart ~= true)
    %rig the game so the player wont have winning position at start
    stoneAmount = randi(maxStone,1,3);
    heapA = stoneAmount(1);
    heapB = stoneAmount(2);
    heapC = stoneAmount(3);
    if(hitungXOR(heapA, heapB, heapC) == 0)
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
  fprintf('Jangan curang, ini bukan CTF.\n');
  
  fprintf('Game dimulai!\n');
  fprintf('HEAP 1: %i\n', heapA);
  fprintf('HEAP 2: %i\n', heapB);
  fprintf('HEAP 3: %i\n', heapC);
  
  %inti gamenya
  while(endGameCondition(heapA,heapB,heapC) = false)
    %insert the game here
  end
end

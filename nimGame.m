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
  
  while(endGameCondition(heapA,heapB,heapC) = false)
    %insert the game here
  end
end

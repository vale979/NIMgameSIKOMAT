function cond = endGameCondition(numA, numB, numC)
  %mengecek apakah permainan sudah berakhir dengan melihat kondisi tiap
  %heap
  if((numA == 0) && (numB == 0) && (numC == 0))
    cond = true;
  else cond = false;
end

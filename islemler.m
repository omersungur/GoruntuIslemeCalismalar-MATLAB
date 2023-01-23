function out = islemler (input1, input2)
  toplam = input1 + input2;
  fark = input1 - input2;
  carpim = input1 * input2;
  oran = input1 / input2;
  out = [toplam,fark,carpim,oran];

endfunction

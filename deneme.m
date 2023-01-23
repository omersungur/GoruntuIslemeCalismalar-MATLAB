clear all
a = 0;

for i=1:20
  for j=1:20
    a = a+1;
    if(a == 5)
      break;
    endif
  end
  break;
end

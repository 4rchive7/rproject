#------------------------그림 저장하는 법-------------------
g1 <- function(){
  
  library(ggplot2)
  #아래 주소에 web\img로 넣으면 꿀잼
  jpeg(filename = "c:\\rProject\\mychart3.jpg", width = 680, height = 680, quality = 100)
  
  #아래부분에 함수에 대한 정보를 넣으면 된다.
  p = ggplot(data=midwest, aes(x=poptotal, y=popasian))+geom_point() + xlim(0, 500000) + ylim(0, 10000)
  print(p);
  dev.off();

  #실행하기 전에 메모리에 먼저 올라가야함 위에 => Source버튼 ㄱㄱ
}
#콘솔창에 함수를 쓰면 되는데 자바에서 함수 이름을 호출하는 것과 같은 역활!


#------------------------그림 저장하는 법-------------------
g2 <- function(a){
  
  library(ggplot2)
  
  
  if(a ==1){
    jpeg(filename = "c:\\rProject\\mychart1.jpg", width = 680, height = 680, quality = 100)
    p = ggplot(data=midwest, aes(x=popasian, y=popasian))+geom_point() + xlim(0, 500000) + ylim(0, 10000)
  }else{
    
    jpeg(filename = "c:\\rProject\\mychart2.jpg", width = 680, height = 680, quality = 100)
  p = ggplot(data=midwest, aes(x=poptotal, y=popasian))+geom_point() + xlim(0, 500000) + ylim(0, 10000)
  }
  print(p);
  dev.off();
}
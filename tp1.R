a = c(5,4,2,14,12.5,8,10,9)

variance = function(x){
   return(mean(x^2)-mean(x)^2)
}

variance2 = function(x,n){
  return(weighted.mean(x^2,n)-weighted.mean(x,n)^2)
}

etype1 = function(x){
  return(sqrt(variance(x)))
}

etype2 = function(x,n){
  return(sqrt(variance2(x,n)))
}

x = c(-1,2,3,5,7,9,11,20)
n = c(1,1,2,3,2,4,1,2)

covariance = function(x,y){
  return(sum(x*y)/length(x)-mean(x)*mean(y))
}

droite1 = function(x,y){
  m = covariance(x,y)/variance(x)
  p = mean(y)-m*mean(x)
  return(c(m,p))
}

droite2 = function(x,y){
  m = covariance(x,y)/variance(y)
  p = mean(x)-m*mean(y)
  return(c(1/m,-p/m))
  }
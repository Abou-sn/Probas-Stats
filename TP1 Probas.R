binf = moy-ecartType
bsup = moy+ecartType

abline(h=moy)
abline(h=binf,col='blue')
abline(h=bsup,col='blue')

w = which(X>=binf & X<=bsup)
length(w)

point()
require(faraway)
data(gavote)
gavote$undercount <- (gavote$ballots - gavote$votes) / gavote$ballots
gavote$pergore <- gavote$gore / gavote$votes
lmod <- lm(undercount ~ pergore+perAA, gavote)
summary(lmod)
plot(pergore ~ perAA, gavote, xlab="Proportion African American", ylab="Proportion for Gore")
deviance(lmod) # en modelo linel es RSS
lmodsum <- summary(lmod)
lmodsum$sigma # residual standard error
lmodsum$r.squared # R2

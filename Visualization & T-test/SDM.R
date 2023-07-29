

          #T_TEST

t_test=read.csv("C:/Users/Electronica Care/Desktop/RDF/new/kidney-disease11-csv.csv")
nrow(t_test)
ncol(t_test)

attach(t_test)
t1=classification=="ckd"
t1

t2=classification=="notckd"
t2
res=t.test(t1,t2)
res









withoutCKD=subset(t_test,t_test$classification=="notckd")



withCKD=subset(t_test,t_test$classification=="ckd")



#Visualization


agewith<-t_test[t_test$classification=="ckd",2]
agewithout<-t_test[t_test$classification!="ckd",2]

#scatter plot between white blood and red blood cells 
plot(t_test$rc,t_test$wc,main="scartter plot",
     pch=16,xlab="red blood cells",ylab="white blood cells",
     col=c(rgb(0,100,0,255,maxColorValue=255),rgb(0,100,0,50,maxColorValue=255)))

#plot between age with CKD and without  CKD 

plot(agewith,type="o",col="red", xlab="range",
     ylab="age",main="WithCKD and WithoutCkd ages")
lines(agewithout,type="o",col="blue")

legend("topright",c("withouCKD","WithCKD"),
       cex =0.8,fill=c("blue","red") )


#age with ckd

hist(agewith, col = "blue", 
     border = "white", xlab = "age",main = " age with ckd ")

#age without  ckd

hist(agewithout, col = "grey",
     border = "white", xlab = "age",main = "age without ckd")

#suger
suwith<-t_test[t_test$classification=="ckd",6]
suwithout<-t_test[t_test$classification!="ckd",6]

#suger with  ckd

hist(suwith, col = "grey", border = "white",
     xlab = "suger",main = " suger with ckd ")
#suger without  ckd

# hist(suwithout, col = "grey", border = "white", 
#      xlab = "suger",main = "suger without ckd")

# viual 2

count_ckd<-nrow(t_test[t_test$classification=="ckd",])

count_notckd<-nrow(t_test[t_test$classification!="ckd",])

#with pie plot 
freq<-c(count_ckd,count_notckd)
label<-c("ckd","Notckd")

piepercent<- round(100*freq/sum(freq[1],freq[2]), 1)

pie(freq,label = piepercent , main = "ckd chart",
    col = rainbow(length(freq)))
legend("topright", c("ckd","Notckd"), cex = 0.8,
       fill = rainbow(length(freq)))

# with barplot 

barplot(freq,names.arg=label,xlab="its existence",
        ylab="frequency ",border="blue",col="yellow")

#potasume
potwith<-t_test[t_test$classification=="ckd",15]
potwithout<-t_test[t_test$classification!="ckd",15]

plot(potwith,type="o",col="red", xlab="range",
     ylab="rate of pot ",main="WithCKD and WithoutCkd potasume")
lines(potwithout,type="o",col="blue")
legend("topright",c("withouCKD","WithCKD"),
       cex =0.8,fill=c("blue","red") )

#blood urea
buwith<-t_test[t_test$classification=="ckd",12]
buwithout<-t_test[t_test$classification!="ckd",12]

plot(buwith,type="o",col="red", xlab="range",
     ylab="rate of blood urea ",
     main="WithCKD and WithoutCkd  blood urea ")
lines(buwithout,type="o",col="blue")
legend("topright",c("withouCKD","WithCKD"),
       cex =0.8,fill=c("blue","red") )


# relation between age and blood urea 
buwith<-t_test[t_test$classification=="ckd",12]
agewith<-t_test[t_test$classification=="ckd",2]

plot(agewith,buwith,main="scartter plot",
     pch=16,xlab="Age ",ylab="blood urea ",
     col=c(rgb(0,0,100,255,maxColorValue=255),rgb(0,0,100,50,maxColorValue=255)))




##############################################

pairs(data.frame(t_test$hemo, t_test$bu))              # Draw pairs plot in R

pairs(data.frame(t_test$sc, t_test$bu))              # Draw pairs plot in R


pairs(data.frame(t_test$su,t_test$bgr))              # Draw pairs plot in R


#############################################


data <- as.matrix(data.frame(t_test$bp,t_test$sg,t_test$al,t_test$su,
                             t_test$bu,t_test$bgr,t_test$pcv,t_test$wc,t_test$rc,
                             t_test$sc,t_test$hemo))

# Default Heatmap
heatmap(data,scale="column")

################################################3

data <- as.matrix(data.frame(t_test$bp,t_test$pcv,t_test$al,
                             t_test$bu,t_test$hemo))

boxplot(data, 
        main="Heat map for chronic kidney disease data",
        ylim = c(0, 100),
        col="orange",
        border="brown"
)


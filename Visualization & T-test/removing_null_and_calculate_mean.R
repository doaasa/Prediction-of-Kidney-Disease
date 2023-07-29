v=read.csv("C:/Users/Electronica Care/Desktop/RDF/Data_before_Cleaning/kidney_disease.csv")
attach(v)
V_AfterNulls=na.omit(v)

#remove nulls of data to get means for rc column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$rc[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

rc_filtered=y[!sapply(y, identical, character(0))]

rc_mean= mean(as.integer(rc_filtered))


#remove nulls of data to get means for rc column with ckd

y <- Filter(Negate(is.null), V_AfterNulls$rc[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

rc_filtered=y[!sapply(y, identical, character(0))]

rc_mean= mean(as.integer(rc_filtered))



#remove nulls of data to get means for bu column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$bu[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bu_filtered=y[!sapply(y, identical, character(0))]

bu_mean= mean(as.integer(bu_filtered))
bu_mean

#remove nulls of data to get means for bu column with ckd

y <- Filter(Negate(is.null), V_AfterNulls$bu[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bu_filtered=y[!sapply(y, identical, character(0))]

bu_mean= mean(as.integer(bu_filtered))
bu_mean



#remove nulls of data to get means for bgr column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$bgr[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bgr_filtered=y[!sapply(y, identical, character(0))]

bgr_mean= mean(as.integer(bgr_filtered))
bgr_mean

#remove nulls of data to get means for bgr column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$bgr[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bgr_filtered=y[!sapply(y, identical, character(0))]

bgr_mean= mean(as.integer(bgr_filtered))
bgr_mean



#remove nulls of data to get means for age column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$age[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

age_filtered=y[!sapply(y, identical, character(0))]

age_mean= mean(as.integer(age_filtered))
age_mean

#remove nulls of data to get means for age column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$age[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

age_filtered=y[!sapply(y, identical, character(0))]

age_mean= mean(as.integer(age_filtered))
age_mean


#remove nulls of data to get means for bp column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$bp[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bp_filtered=y[!sapply(y, identical, character(0))]

bp_mean= mean(as.integer(bp_filtered))
bp_mean

#remove nulls of data to get means for bp column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$bp[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

bp_filtered=y[!sapply(y, identical, character(0))]

bp_mean= mean(as.integer(bp_filtered))
bp_mean


#remove nulls of data to get means for sg column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sg[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for sg column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sg[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for al column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$al[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for al column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$al[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean


#remove nulls of data to get means for su column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$su[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for su column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$su[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for sod column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sod[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for sod column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sod[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean


#remove nulls of data to get means for pot column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$pot[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for pot column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$pot[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for hemo column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$hemo[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for hemo column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$hemo[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean


#remove nulls of data to get means for pcv column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$pcv[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for pcv column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$pcv[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean



#remove nulls of data to get means for sod column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sod[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for sod column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$sod[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean




#remove nulls of data to get means for wc column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$wc[V_AfterNulls$classification=='ckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

#remove nulls of data to get means for wc column with ckd
y <- Filter(Negate(is.null), V_AfterNulls$wc[V_AfterNulls$classification=='notckd'])
y=gsub(" ", "",y , fixed = TRUE)
y=lapply(y, function(x) x[nchar(x) >= 1])

filtered=y[!sapply(y, identical, character(0))]

mean= mean(as.integer(filtered))
mean

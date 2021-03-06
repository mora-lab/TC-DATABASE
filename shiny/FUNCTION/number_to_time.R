#因为在neo4j中得到的关于时间的关系类型的值是数字，需要转换成文字才能知晓该关系类型是啥意思，所以就有了该函数咯

#用于数字"1010"转换成对应的时间点
#根据数字"1011","1111","0110","0110"等之类的，转换成跟时间点对应的简写
#比如： "1011"转写成 "M0, M6, M12"

number_to_time <- function(str = "1011", tp = c("M0", "M3", "M6", "M12")){
  str = unlist(strsplit(str, ""))
  t <- paste(tp[which(str == "1")], collapse = ", ")
  return(t)
}
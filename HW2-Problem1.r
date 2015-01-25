# split by spaces
splitBySpaces = function(s){
  return(as.integer(unlist(strsplit(s, " "))))
}

# control group
Control = list(
  splitBySpaces("272 283 316 321 329 345 349 350 356 356"),
  splitBySpaces("360 366 380 384 399 402 410 431 455 462")
)
ControlDeltas = 

# lysine group
Lysine = list(
  splitBySpaces("318 326 339 361 375 392 393 401 403 406"),
  splitBySpaces("407 410 420 426 427 430 434 447 467 477")
)

# deltas
Deltas = data.frame(
  Control = (Control[[2]] - Control[[1]])/Control[[1]],
  Lysine = (Lysine[[2]] - Lysine[[1]])/Lysine[[1]]
)

# boxplot
boxplot(Deltas)

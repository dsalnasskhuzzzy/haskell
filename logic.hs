boolean = [True,False]

twoBool = [(x,y)|x<-boolean,y<-boolean]

evaluate = [expression (fst bags) (snd bags) | bags<-twoBool]

expression p q = not p || q

getTable = zip twoBool evaluate

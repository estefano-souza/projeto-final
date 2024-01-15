# Fonte do código original da função: https://stackoverflow.com/questions/23891140/r-how-to-visualize-confusion-matrix-using-the-caret-package
draw_confusion_matrix <- function(cm) {
  
  layout(matrix(c(1,1,2)))
  par(mar=c(2,2,2,2))
  plot(c(100, 345), c(300, 450), type = "n", xlab="", ylab="", xaxt='n', yaxt='n')
  
  # create the matrix 
  rect(150, 430, 240, 370, col='#3F97D0')
  text(195, 435, '0 (Não)', cex=1.2)
  rect(250, 430, 340, 370, col='#F7AD50')
  text(295, 435, '1 (Sim)', cex=1.2)
  text(125, 370, 'Observado', cex=1.3, srt=90, font=2)
  text(245, 450, 'Previsto', cex=1.3, font=2)
  rect(150, 305, 240, 365, col='#F7AD50')
  rect(250, 305, 340, 365, col='#3F97D0')
  text(140, 400, '0 (Não)', cex=1.2, srt=90)
  text(140, 335, '1 (Sim)', cex=1.2, srt=90)
  
  # add in the cm results 
  res <- as.numeric(t(cm$table))
  text(195, 400, res[1], cex=1.6, font=2, col='white')
  text(195, 335, res[2], cex=1.6, font=2, col='white')
  text(295, 400, res[3], cex=1.6, font=2, col='white')
  text(295, 335, res[4], cex=1.6, font=2, col='white')
  
  # add in the specifics
  plot(c(100, 0), c(100, 0), type = "n", xlab="", ylab="", xaxt='n', yaxt='n')
  text(10, 85, "Sensibilidade", cex=1.5, font=2)
  text(10, 70, round(as.numeric(cm$byClass[1]), 5), cex=1.5)
  text(30, 85, "Especificidade", cex=1.5, font=2)
  text(30, 70, round(as.numeric(cm$byClass[2]), 5), cex=1.5)
  text(50, 85, "Precisão", cex=1.5, font=2)
  text(50, 70, round(as.numeric(cm$byClass[5]), 5), cex=1.5)
  text(70, 85, "Rechamada", cex=1.5, font=2)
  text(70, 70, round(as.numeric(cm$byClass[6]), 5), cex=1.5)
  text(90, 85, "F1-score", cex=1.5, font=2)
  text(90, 70, round(as.numeric(cm$byClass[7]), 5), cex=1.5)
  
  # add in the accuracy information
  text(30, 35, "Acurácia", cex=1.9, font=2)
  text(30, 20, round(as.numeric(cm$overall[1]), 5), cex=1.7)
  text(70, 35, "Kappa", cex=1.9, font=2)
  text(70, 20, round(as.numeric(cm$overall[2]), 5), cex=1.7)
}
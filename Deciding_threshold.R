# LOADING THE INPUT IMAGE FOR DECIDING THE THRESHOLD
# RESIZING IT AND THEN CONVERTING TO GREYSCALE

img1 <- load.image("C:\\Users\\anupama25\\Desktop\\Milind.jpg") %>%
  resize(600, 650)%>%
 grayscale()
img <- load.image("C:\\Users\\anupama25\\Desktop\\Anupama2.jpg") %>%
  resize(600, 650)%>%
  grayscale()

# PLOTTING THE IMAGE FOR CONFIRMATION
layout(1)
plot(img)
plot(img1)
# CONVERTING THE IMAGE INTO A MATRIX FORMAT
imgGSMat <- img %>% as.matrix() %>% t()

dim(imgGSMat)
#head(imgGSMat)
# PLOTTING THE SUMMARY OF THE INPUT ARRAY
# TO GET THE SENSE OF DISTRIBUTION
summary(c(imgGSMat))

# PLOTTING THE IMAGE FILE WITH THRESHOLD
# THIS CAN BE A TRIAL AND ERROR METHOD
plot(as.cimg(imgGSMat > .57))


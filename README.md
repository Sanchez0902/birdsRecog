
# BIRDS RECOGNISTION APP

A mobile application designed for different bird species detection.


## Technical Description

Bird Species is identified by using the Inception V3 Deep Learning Model.

The frontend provides bird’s picture and predicted results which is developed by using Flutter.

Firebase is used to store the data and [Flask] as a backend framework.

The deep learning model is trained using TensorFlow library.

## Dataset Description

Dataset has been taken from kaggle.

Link: https://www.kaggle.com/code/astroaman/birds-species-classification-with-inceptionv3/notebook

### Internal Description

The applicaton opens to a Home Page which opens upto the login page where details are entered. E-mail and Password are entered.

This is followed by the Picture page where we can select pictures either from the Gallery or can be taken from the camera.

After picture to be recognised has been selected, we select the Predict button from the Prediction Page. 
On selecting the What's that?
We get the Wikipedia page describing the bird's information.

### Database Description

Firebase has been used to store the info about the user which is used to register. Login credentials are verified by checking the credentials present in the database.

## Platforms 
 
 Android Studio for Front-end and Back-end    development. Kaggle for Dataset and Jupyter lab for model building

## Building the model

Number of Epochs: 10
Steps for Epochs: 2208
Train Accuracy: 94.65 %
Test Accuracy: 90.05 %

## SOME OTHER information

### About Inception V3

The inception v3 model was released in the year 2015, it has a total of 42 layers and a lower error rate than its predecessors. Let's look at what are the different optimizations that make the inception V3 model better.

The major modifications done on the Inception V3 model are

Factorization into Smaller Convolutions
Spatial Factorization into Asymmetric Convolutions
Utility of Auxiliary Classifiers
Efficient Grid Size Reduction

More info in: https://iq.opengenus.org/inception-v3-model-architecture/













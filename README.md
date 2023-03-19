
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

![image](https://user-images.githubusercontent.com/121747046/226204289-81fb7295-fd8c-4ccd-8128-565866e86246.png)
![image](https://user-images.githubusercontent.com/121747046/226204301-776fc7ff-459c-4a58-8a10-033c6b1318e7.png)



This is followed by the Picture page where we can select pictures either from the Gallery or can be taken from the camera.

![image](https://user-images.githubusercontent.com/121747046/226204332-b99dbb62-63dd-43cb-8619-b9c1d8ebf0b8.png)
![image](https://user-images.githubusercontent.com/121747046/226204361-50bbc2a2-0e32-4475-aa3c-29ec6b53a9ee.png)

If done through camera

![image](https://user-images.githubusercontent.com/121747046/226204389-ff84dcfd-d399-4811-9a46-369eec9eb723.png)
![image](https://user-images.githubusercontent.com/121747046/226204470-0180fe1d-4f38-4d33-bb65-d00d3f280f63.png)

After picture to be recognised has been selected, we select the Predict button from the Prediction Page. 

![image](https://user-images.githubusercontent.com/121747046/226204586-63c67d30-eaac-45a1-bd49-44641c312c9c.png)

![image](https://user-images.githubusercontent.com/121747046/226204601-f2283bb9-e7a5-4481-afff-287796d054e3.png)

![image](https://user-images.githubusercontent.com/121747046/226204651-2070e071-9872-4e96-8005-95f2eaf8f8e8.png)

![image](https://user-images.githubusercontent.com/121747046/226204668-cdda2d15-a387-4ec0-8c62-d1f0b1da717a.png)



selecting the What's that?
We get the Wikipedia page describing the bird's information.

![image](https://user-images.githubusercontent.com/121747046/226204689-269875e9-f7a6-4948-8d66-206ffa532fab.png)
![image](https://user-images.githubusercontent.com/121747046/226204707-066e1841-6002-423c-9a52-e19344794572.png)

![image](https://user-images.githubusercontent.com/121747046/226204724-3bad466e-545f-44a8-8afc-73bd0d782522.png)

![image](https://user-images.githubusercontent.com/121747046/226204731-62e1a98e-657f-43f2-a5be-d2de2fb32e56.png)


### Database Description

Firebase has been used to store the info about the user which is used to register. Login credentials are verified by checking the credentials present in the database.

![2023-01-08](https://user-images.githubusercontent.com/121747046/226203961-34a9489e-780a-4b68-aeb8-7627bc651393.png)


![2023-01-08 (1)](https://user-images.githubusercontent.com/121747046/226203971-0d220d15-f256-4586-92a8-823a6e6e37e1.png)


## Platforms 
 
 Android Studio for Front-end and Back-end development. 
 Kaggle for Dataset and 
 Jupyter lab for model building

## Building the model

Number of Epochs: 10
Steps for Epochs: 2208
Train Accuracy: 94.65 %
Test Accuracy: 90.05 %

![image](https://user-images.githubusercontent.com/121747046/226204094-c77ae173-596e-4fda-a32f-de3de539c02f.png)

![image](https://user-images.githubusercontent.com/121747046/226204114-496a4395-adbf-440a-b529-e60db9b7275a.png)
![image](https://user-images.githubusercontent.com/121747046/226204121-35f4f002-1ad0-4ecf-b5e3-13c7f1b56714.png)



## SOME OTHER information

### About Inception V3

The inception v3 model was released in the year 2015, it has a total of 42 layers and a lower error rate than its predecessors. Let's look at what are the different optimizations that make the inception V3 model better.

The major modifications done on the Inception V3 model are

Factorization into Smaller Convolutions
Spatial Factorization into Asymmetric Convolutions
Utility of Auxiliary Classifiers
Efficient Grid Size Reduction

More info in: https://iq.opengenus.org/inception-v3-model-architecture/

An overall picture:

![download](https://user-images.githubusercontent.com/121747046/226204817-8634b65e-b141-41e2-80b9-e0b97b4e9306.jpg)















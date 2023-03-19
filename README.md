
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

![WhatsApp Image 2023-01-08 at 20 52 28](https://user-images.githubusercontent.com/121747046/226203542-0c9d3eb4-818a-4bb0-aa99-d98c5ce550c5.jpeg)
![WhatsApp Image 2023-01-08 at 20 52 29 (2)](https://user-images.githubusercontent.com/121747046/226203564-82f07f5f-b542-4359-b354-74178db6ad6c.jpeg)


This is followed by the Picture page where we can select pictures either from the Gallery or can be taken from the camera.

![WhatsApp Image 2023-01-08 at 20 52 29 (3)](https://user-images.githubusercontent.com/121747046/226203568-2404ad94-475a-4413-8ffa-b0fd7d0eb669.jpeg)

![WhatsApp Image 2023-01-08 at 20 52 30](https://user-![WhatsApp Image 2023-01-08 at 20 52 30 (1)](https://user-images.githubusercontent.com/121747046/226203616-64082c3d-f44a-48e5-8bac-bb8a29165dc2.jpeg)
images.githubusercontent.com/121747046/226203602-fe13700e-9f4c-472f-8f62-64bc03341818.jpeg)

If done through camera


![WhatsApp Image 2023-01-08 at 21 51 12](https://user-images.gith![WhatsApp Image 2023-01-08 at 21 51 13](https://user-images.githubusercontent.com/121747046/226203750-32d68a46-6802-423a-a3e9-096f0141db4b.jpeg)
ubusercontent.com/121747046/226203744-0504404f-d33e-4f3f-8c42-a16d823a1da9.jpeg)


After picture to be recognised has been selected, we select the Predict button from the Prediction Page. 

![WhatsApp Image 2023-01-08 at 20 52 31](https://user-images.githubusercontent.com/121747046/226203765-4bc40128-590f-4832-8679-331d979960ea.jpeg)
![WhatsApp Image 2023-01-08 at 21 51 13](https://user-images.githubusercontent.com/121747046/226203772-491c2c60-6fed-4772-b1fd-1fa52c98b34d.jpeg)


On ![WhatsApp Image 2023-01-08 at 20 52 31](https://user-images.githubusercontent.com/121747046/226203868-7c64eadf-7bd1-4ec4-9a16-6afd91bc9e91.jpeg)

![WhatsApp Image 2023-01-08 at 21 51 14](https://user-images.githubusercontent.com/121747046/226203878-0358b1ac-3bd4-4f21-a20b-88ed5592ca15.jpeg)

selecting the What's that?
We get the Wikipedia page describing the bird's information.

![WhatsApp Image 2023-01-08 at 20 52 31 (1)](https://user-images.githubusercontent.com/121747046/226203893-6b234e2e-e06a-4637-b55e-c230bc79e986.jpeg)
![WhatsApp Image 2023-01-08 at 21 51 14 (1)](https://user-images.githubusercontent.com/121747046/226203896-153c40ae-503e-4237-a196-28c8f5507910.jpeg)


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















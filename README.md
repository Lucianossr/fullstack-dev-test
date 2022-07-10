# Smash Fullstack dev case
The fullstack developer case for Smash admission process. 

> Estimated time to complete: 30min

# Links
[backend] Backend NodeJs.
[smash] Flutter App.

# Project Firebase
Attention, this project's account is configured with the Spark plan. but if you,
however if you want to change to the Blaze plan, do not publicly disclose your serviceAccountKey.json

# How to Run
Inside of paste [BACKEND/functions].
```bash
#build
npm run build.

#run
npm run start.
```

Inside of paste [smash].
```bash
#build
flutter build web.

#run
firebase emulators:start --only hosting
```

# Completed Task's

## Firebase Firestore
 - [X] Create new firebase project [https://firebase.google.com/] Ex: smashtest-001
 - [X] Design and organize the data [data/world-cities.csv] into firestore collection & docs

## NodeJS
 - [X] Create an script to import/create data [data/world-cities.csv] into your firestore collections from the previous topic
 
## Flutter
 - [X] Create a new project with your favorite platform (Android, iOS or Web)
 - [X] Follow the UX Diagrams to create the screens
 - [X] Connect with Firebase Firestore collections built in the previous topics
 - [X] Display the data and create navigation between them
  
## Git
 - [X] Create a repository for your project or a fork
 - [X] Send us your repository link
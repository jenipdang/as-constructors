# Sinatra React Project: Creative Minds


## Introduction
Welcome to Creative-Minds, a private community for users from all around the world to can come together to share ideas and tips for anything related to home improvement: decoration, renovation, etc.. All posts in this application are made private so users can JUST be themselves among peers that just like them. 

Application Features:
- Sinatra Backend Server to store all data
- Private Route setup to hide access from non-users
- User Authtentication
- Design: combine with React Bootstrap, Icons and styled-components

This project is separated into two applications:

- A React frontend, in the `creative-mind-client` directory
(https://github.com/jenipdang/creative-mind-frontend)
- A Sinatra backend, in the `creative-mind-server` directory


## Frontend Setup

To get started, `cd` into the `creative-mind-client` directory. Then run:

```console
$ npm install
$ npm run server
```

This will install the React project dependencies, and run a API server
using `json-server`. Next, run this in a new terminal:

```console
$ npm start
```

Then visit [http://localhost:9292](http://localhost:9292) in the browser and
interact with the application to get a sense of its features.


## Backend Setup

In another terminal, `cd` into the `creative-mind-server` directory, and run
`bundle install` to install the dependencies.

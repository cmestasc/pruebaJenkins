#Base image taken from:https://github.com/cypress-io/cypress-docker-images
FROM cypress/browsers:latest
#Create the folder where our project will be stored
RUN mkdir /my-cypress
#We make it our workdirectory
WORKDIR /my-cypress
#Let's copy the essential files that we MUST use to run our scripts.
COPY ./package.json .
COPY ./cypress.config.js .
COPY ./cypress ./cypress
#Install the cypress dependencies in the work directory
RUN npm install
#Executable commands the container will use[Exec Form]
ENTRYPOINT ["npx","cypress","run"]
#With CMD in this case, we can specify more parameters to the last entrypoint.
CMD [""]    
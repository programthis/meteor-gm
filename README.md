# Build Instructions
After modifying a new docker image, it then needs to be built and deployed to the docker.com hosting site.

# Usage:

To build the image:
```docker build -t programthis/meteor-gm:latest .```


To deploy a new build
```docker push programthis/meteor-gm:latest```

# Installation Instructions
Add this docker image to the meteor-up config file as seen in the below example:

```
module.exports = {
    servers: {
      one: {
        host: '1.2.3.4',
        username: 'root',
        pem: '~/.ssh/id_rsa'
      }
    },
    meteor: {
      name: 'Wekan',
      path: '../',
      docker: {
        image: 'programthis/meteor-gm'
      },
      servers: {
        one: {}
      },
      buildOptions: {
        serverOnly: true
      },
      env: {
        ROOT_URL: 'http://app.com',
        MONGO_URL: 'mongodb://localhost/meteor'
      }
    },
    mongo: {
      version: '3.4.1',
      servers: {
        one: {}
      }
    }
};
```

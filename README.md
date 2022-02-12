## Building own Node.js image

Goal: The purpose of this image is to test Node js

### Steps to building your own image

Be in the directory Node-Js-Sample-App
- `cd Node-Js-Sample-App`
- `docker build -t devopsguy9/node-app .`
- `docker run -p 8080:8080 -d devopsguy9/node-app`

### Saving the image to docker hub
- `Register for account`
- `In server machine`
- `# docker login`
- `# docker images`    
- `# docker tag e63ada01cfdf(image-id) docker-user_id/image-name`
- `# docker images`    
- `# docker push docker-user_id/image-name`

        
        
        

        

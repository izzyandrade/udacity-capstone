# Step 1:
# Build image and add a descriptive tag
docker build -t udacity-capstone .

# Step 2: 
# List docker images
docker images

# Step 3: 
# Run flask app
docker run -p 8000:80 udacity-capstone

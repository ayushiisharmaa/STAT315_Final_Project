# STAT315_Final_Project

## Instructions for running our docker container:

###    1. Pull the docker image from Docker Hub:
``` bash
        docker pull bandarim/spotify_final_project:latest 
```
###    2. Run the container:
``` bash
        docker run --name STAT315FinalProject -p 9999:8888 bandarim/spotify_final_project:latest
```

###    3. Open the notebook in browser
``` bash
        http://localhost:9999/
```

###    4. Inside Jupyter open up the notebook located in the notebook directory and complete analysis:
```bash
        notebook/spotify_analysis.ipynb
```
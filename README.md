# Components of Visual Attention (Posner & Cohen, 1984)
A browser based implementation of posners basic paradigm as presented in [Components of Visual Attention](https://www.researchgate.net/publication/203918232_Components_of_visual_orienting) using jsPsych.
It it meant to be used as a demonstration when discussing the paper in a lecture. You can try out a hosted version at [posner.psych.study](https://posner.psych.study)

This implementation deviates slightly from the original paradigm, as the black square cannot appear while the cue is still active. Also, the cue was replaced with a red flashing of the corresponding box. As this implementation is built for demonstration purposes, these minor were found to be unproblematic.


## Prerequisites

[Docker](https://www.docker.com/get-started) and [Docker Compose](https://docs.docker.com/compose/install/) are needed for deployment.

This project was developed and deployed on MacOS and Ubuntu systems.


## Deployment

After cloning the repository, you can build the project by running

```
./build-container.sh
```

in the [prod_posner-covert-attention](prod_posner-covert-attention/) directory. 
This will automatically start the webserver serving the app, you can stop it with
```
docker-compose down
```

and later restart it with

```
docker-compose up -d
```

in the [prod_posner-covert-attention](prod_posner-covert-attention/) directory.

Depending on your setup, you might want to change the ip mapping in [prod_posner-covert-attention/docker-compose.yml](prod_posner-covert-attention/docker-compose.yml). I recommend leaving it the way it is and pointing an apache reverse proxy or something similar to the specified port.


## Built With

  - [jsPsych](https://www.jspsych.org/)
  
## Authors

- **Adrian Steffan** [adriansteffan](https://github.com/adriansteffan) [website](https://adriansteffan.com/)


## License

This project is licensed under the [GNU GPLv3](LICENSE.md) - see the [LICENSE.md](LICENSE.md) file for
details



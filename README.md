FluidTYPO3 Docker Image
=======================

Usage is quite simple:

```bash
git clone https://github.com/FluidTYPO3/fluidtypo3-docker.git
cd fluidtypo3-docker
docker build -t fluidtypo3 .
docker-compose up
```

Performing these steps will start a default FluidTYPO3 site ready
to be unrolled using EXT:site. To perform the final steps, log in
to the TYPO3 backend, go to the "Extension Manager", locate the
extension called "FluidTYPO3 Site Kickstarter", click the little
gear icon to enter extension settings and fill these settings with
the configuration you desire. Finally, save the configuration view
and EXT:site will unroll pages, templates etc. and remove itself.


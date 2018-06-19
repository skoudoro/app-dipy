# docker-dipy
dipy base container for docker.
Look at command line tutorial on dipy website.

For more info in preprocessing (denoising, ...) , tractography, registration, look at dipy website.

## Reconstruction information

| Method | Single Shell | Multi-Shell | Cartesian |
| :--- | :---: | :---: | :---: |
| SHORE |  | x |  |
| MAP-MRI              |              | x           |           |
| MAPL                 |              | x           |           |
| DKI - Standard       |              | x           |           |
| DKI - Micro          | ?            | ?           |           |
| DTI (SLS, WLS, NNLS) | x            | x           |           |
| CSD                  | x            |             |           |
| MCSD                 |              | x           |           |
| SDT                  | x            |             |           |
| DSI                  |              |             | x         |
| DSID                 |              |             | x         |
| GQI  - GQI2          |              | x           | x         |
| SFM                  | x            | x           |           |
| Q-BALL               | x            |             |           |
|  CSA  |    x   |             |           |
| Westin CSA | x |             |           |
|  ForeCast | x  |             |           |
|  IVIM  |              |  x  |           |
| ActiveAx  |              |       x      |           |
| Noddi / NoddiX  |              |      x       |           |
|  Ball & Stick    |   x   |    x   |           |

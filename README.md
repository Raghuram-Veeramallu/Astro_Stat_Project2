# Estimating Hubble's constant from Redshifts and Distances of Type Ia SNae

What is the value of Hubble's constant as found from a linear regression of the redshifts and distances of Type Ia supernovae within a redshift of 0.1?

### Background  

Hubble's law is a relationship that describes the expansion of the universe by connecting the speed at which galaxies move away from each other with the distance between the two objects. For small distances, Hubble's law is a linear relationship between the velocity of the object and the distance:

$v=H_0 d$ or $z=\frac{H_0}{c}d$

where $z$ is the redshift, $v=cz$ is the velocity of the object, $H_0$ is Hubble's constant. The faster a body moves away from the observer, the more redshifted the light emitted from that body is. Thus, further bodies will move away faster and have a higher redshift. The linear scaling of this redshift increase is determined by Hubble's constant.

Type Ia supernovae provide one possible route for investigating Hubble's law. These objects are standardizable candles, meaning that their distance to the observer can be determined with few parameters.

Literature Reference: [Improved cosmological constraints from a joint analysis of the SDSS-II and SNLS supernova samples](https://www.aanda.org/articles/aa/pdf/2014/08/aa23413-14.pdf)

### Data

Source: 
[VizieR](https://vizier.cds.unistra.fr/viz-bin/VizieR-3?-source=J/A%2bA/568/A22/tablef3)   
[GoogleDrive](https://drive.google.com/file/d/1v6LSAKvkuEjahtOWDNq3riBMLkD7rZD0/view)

**Column Description:**.

| Column  | Description                 |
| ------- | --------------------------- |
| zcmb    | CMB Frame Redshift          |
| zhel    | Heliocentric Redshift       |
| mb      | B band peak magnitude (in mB)|
| e_mb    | Error in mb                 |
| x1      | SALT2 shape (stretch) parameter |
| e_x1    | Error in x1                 |
| c       | SALT2 color parameter       |
| e_c     | Error in c                  |
| logMst  | $Log_{10}$ Host Stellar Mass|  


### Software setup to run the notebook

Python version used: `3.10.12`  

We recommend using a `conda` environment to install the requirements and run the notebook.  

1. Install Conda
Conda can be installed from this page: https://conda.io/projects/conda/en/latest/user-guide/install/index.html.  

2. Create a conda environment
```
conda create --name ast5731_group3_project2 --file requirements.txt
```
You can change the name of the environment from `ast5731_group3_project2` to the one you want.

3. Install Jupyter notebook from this page: https://jupyter.org/install  

4. The notebook can be run using by starting the jupyter notebook server

```
# to start the server
jupyter notebook
```

Navigate to the file and run the `Group3_Project2.ipynb`

#### Team

<table>
  <tr>
    <td align="center"><a href="https://github.com/Raghuram-Veeramallu"><img src="https://avatars.githubusercontent.com/u/26851915?v=4" width="100px;" alt=""/><br /><sub><b>Hari Veeramallu</b></sub></a></td>
    <td align="center"><a href="https://github.com/jalatoma"><img src="https://avatars.githubusercontent.com/u/106641757?v=4" width="100px;" alt=""/><br /><sub><b>Jacynda Alatoma</b></sub></a></td>
    <td align="center"><a href="https://github.com/nkruegler"><img src="https://avatars.githubusercontent.com/u/144250047?v=4" width="100px;" alt=""/><br /><sub><b>Nicholas Kruegler</b></sub></a></td>
    <td align="center"><a href="https://github.com/DanielWarshofsky"><img src="https://avatars.githubusercontent.com/u/70673647?v=4" width="100px;" alt=""/><br /><sub><b>Daniel Warshofsky</b></sub></a></td>
  </tr>
</table>

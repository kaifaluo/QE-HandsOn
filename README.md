# Hands-on Exercises [PHY392N]

## 3 Equilibrium structures: Cl2

By setting option of scf as *relax*, we could obtain the calculated binding distance and total energy of Cl-Cl molecule, where the dashed blue line denotes the measured Cl-Cl bond length$1.99\AA$.

![equilPosition.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/3_5_7_Cl2/equilPosition.png)

## 4 Layered systems: Graphite



## 5 Automatic structure optimization: Cl2



## 6 Elastic constants of cubic systems

### Diamond

- eta=0.002

Based on elastic theory for **cubic** crystals, we have three relations between three independent elastic constants in stiffness tensor and total energy differences,
$$
\begin{aligned}
&C_{11}+2C_{12}=\frac{2}{3}\frac{U_{1}(\eta)-U_{0}}{\eta^{2}\Omega},\\
&C_{11}-C_{12}=\frac{1}{3}\frac{U_{2}(\eta)-U_{0}}{\eta^{2}\Omega},\\
&C_{44}=2\frac{U_{3}(\eta)-U_{0}}{\eta^{2}\Omega},
\end{aligned}
$$
where $U_{0,1,2,3}$ are total energies of untouched, isotropic, tetragonal, and trigonal deformed systems, respectively, with untouched volume $\Omega=73.9876Bohr^{3}$

From ab initio calculations for $\eta=0.002$, we obtain them up to 8 significant figures,

|  $U_{0}/Ry$  | $U_{1}(0.002)/Ry$ | $U_{2}(0.002)/Ry$ | $U_{3}(0.002)/Ry$ |
| :----------: | :---------------: | :---------------: | :---------------: |
| -22.80164884 |   -22.80161309    |   -22.80159274    |   -22.80164689    |

Accordingly, these two relations in diamond are
$$
C_{11}+2C_{12}=0.0805, C_{11}-C_{12}=0.0632, C_{44}=0.0132,
$$
in unit of $Ry/Bohr^{3}=14710.5GPa$, where we keep 4 significant figures to be consistent to cell volume. Finally, these two elastic constants of our interest from ab initio and experiments are listed as:

|           | $C_{11}/GPa$ | $C_{12}/GPa$ | $C_{44}/GPa$ |
| :-------: | :----------: | :----------: | :----------: |
| ab initio |     1015     |      85      |     194      |
|   exp.    |     1482     |     124      |     578      |
|   error   |     32%      |     32%      |     66%      |

- Central finite difference

For second order derivatives, we can use [central finite differences](https://en.wikipedia.org/wiki/Finite_difference#Higher-order_differences) to increase the accuracies as
$$
\begin{aligned}
&C_{11}+2C_{12}=\frac{1}{3}\frac{U_{1}(\eta)+U_{1}(-\eta)-2U_{0}}{\eta^{2}\Omega},\\
&C_{11}-C_{12}=\frac{1}{6}\frac{U_{2}(\eta)+U_{2}(-\eta)-2U_{0}}{\eta^{2}\Omega},\\
&C_{44}=\frac{U_{3}(\eta)+U_{3}(-\eta)-2U_{0}}{\eta^{2}\Omega},
\end{aligned}
$$
So we need three more data points $U_{i}(-\eta)$ as

| $U_{1}(-0.002)/Ry$ | $U_{2}(-0.002)/Ry$ | $U_{3}(-0.002)/Ry$ |
| :----------------: | :----------------: | :----------------: |
|    -22.80160852    |    -22.80159209    |    -22.80164020    |

and the corrected constants are

|           | $C_{11}/GPa$ | $C_{12}/GPa$ | $C_{44}/GPa$ |
| :-------: | :----------: | :----------: | :----------: |
| ab initio |     1043     |     108      |     526      |
|   exp.    |     1482     |     124      |     578      |
|   error   |     30%      |     13%      |      9%      |

- Bulk modulus from eta=0.001, 0.01, 0.1

Nothing else but repeat all the above calculations with different $\eta$:

| \eta  |   $U_{1}(eta)/Ry$    |   $U_{2}(eta)/Ry$    |   $U_{3}(eta)/Ry$    |
| :---: | :------------------: | :------------------: | :------------------: |
| 0.001 |     -22.80164233     |     -22.80163550     |     -22.80164753     |
| 0.01  |     -22.80063485     |     -22.80019755     |     -22.80150282     |
|  0.1  |     -22.71970979     |     -22.67048597     |     -22.78567111     |
|       | **$U_{1}(-eta)/Ry$** | **$U_{2}(-eta)/Ry$** | **$U_{3}(-eta)/Ry$** |
| 0.001 |     -22.80163984     |     -22.80163505     |     -22.80164837     |
| 0.01  |     -22.80055883     |     -22.80016736     |     -22.80150994     |
|  0.1  |     -22.66310783     |     -22.64157875     |     -22.78842734     |

Accordingly, we list these three elastic constants as

| $\eta$ |  B   | $C_{11}/GPa$ | $C_{12}/GPa$ | $C_{44}/GPa$ |
| :----: | :--: | :----------: | :----------: | :----------: |
| 0.001  | 343  |     942      |      43      |     354      |
| 0.002  | 420  |     1043     |     108      |     526      |
|  0.01  | 465  |     1113     |     141      |     566      |
|  0.1   | 487  |     1131     |     165      |     581      |
|  exp.  | 570  |     1482     |     124      |     578      |

### SrTiO3 (STO)

We find the structure file in poscar format from [Materials Projects](https://materialsproject.org/materials/mp-5229/).

- Structure optimization



- Heat map of potential energy surface



- Bulk modulus

Follow the experience in the calculation of diamond, here we take $\eta=0.01$.

|  $U_{0}/Ry$   | $U_{1}(0.01)/Ry$ | $U_{1}(-0.01)/Ry$ |
| :-----------: | :--------------: | :---------------: |
| -105.41423964 |  -105.41213372   |   -105.41213468   |
| B(ab initio)  |     B(exp.)      |       error       |
|    188GPa     |     182.3GPa     |       3.1%        |

where we used $\Omega=366.1910Bohr^{3}$, and  formulas (4) at $T=0K$ in [reference](https://journals.aps.org/pr/abstract/10.1103/PhysRev.129.90):
$$
C_{11}=334.1GPa\times 1.0012,~
C_{12}=104.9GPa\times 1.0123
$$




## 7 Vibration frequencies

### Stretching frequency of Cl2

| $\delta$ | $U(d_{0}+\delta)/Ry$ | $U(d_{0}-\delta)/Ry$ |    $\omega/THz$   |
| :------: | :---------------: | :---------------: | ------------- |
|  0.001   |   -59.99059502    |    -59.99059537   |    15.07     |
|  0.002   |   -59.99059397    |    -59.99059443   |    17.87     |
|   0.01   |   -59.99057462    |    -59.99057380   |    14.96     |
|  DFPT    |                   |                   |    16.62     |

where $U(3.725Bohr)=-59.99059541Ry$, and we used the mass of the Cl nucleus $M=35.45u$ and
$$
\omega=\sqrt{\frac{2}{M\delta^{2}}[U(\delta)+U(-\delta)-2U_{0}]}.
$$


### Phonon dispersion of diamond

The phonon bands are shown as below:

![diamond_phFre.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/6_7_Diamond/diamond_phFre.png)
where the solid and dashed lines denote $nq1=nq2=nq3=2$ and $nq1=nq2=nq3=4$, respectively.

## 8 Phonons in polar crystals

### GaAs
![GaAs_phFre.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/8_10_GaAs/GaAs_phFre.png)


### SrTiO3
![STO_phFre.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/6_8_STO/STO_phFre.png)


## 9 Band structure and Fermi surface

### Silicon
![Si_bands.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/2_9_10_Silicon/Si_bands.png)

### Copper
![copper_bands.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/9_copper/copper_bands.png)



## 10 Dielectric function

### GaAs
![GaAs_bands.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/8_10_GaAs/GaAs_bands.png)

![GaAs_epsilon.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/8_10_GaAs/GaAs_epsilon.png)

### Silicon
![Silicon_epsilon.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/2_9_10_Silicon/Silicon_epsilon.png)

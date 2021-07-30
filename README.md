# Hands-on Exercises

## 1 Workflow of Quantum Espresso
The script structure is as shown [here](https://www.quantum-espresso.org/Doc/INPUT_PW.html).

To be continued...

## 2 Equilibrium structures: Cl2

By setting option of scf as *relax*, we could obtain the calculated binding distance and total energy of Cl-Cl molecule, where the dashed blue line denotes the measured Cl-Cl distance $1.99\AA$.

![equilPosition.png](https://github.com/luokf/DFT2CmptMaterialsDesign/blob/main/QE_Hands_On/3_5_7_Cl2/equilPosition.png)

## 3 Layered systems: 



## 6 Elastic constants of cubic systems

### Inaccurate algorithm with eta=0.002

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
| -22.80164884 |   -22.80161309    |   -22.80159274    |   -22.78739772    |

Accordingly, these two relations in diamond are
$$
C_{11}+2C_{12}=0.0805, C_{11}-C_{12}=0.0632, C_{44}=0.0132,
$$
in unit of $Ry/Bohr^{3}$, where we keep 4 significant figures to be consistent to cell volume. Finally, these two elastic constants of our interest from ab initio and experiments are listed as:

|           | $C_{12}/GPa$ | $C_{12}/GPa$ | $C_{44}/GPa$ |
| :-------: | :----------: | :----------: | :----------: |
| ab initio |     1015     |      85      |     194      |
|   exp.    |     1482     |     124      |     578      |
|   error   |    31.5%     |    31.5%     |    66.4%     |



### More accurate algorithm with eta=0.002



### Bulk modulus from eta=0.001, 0.01, 0.1



### Bulk modulus of SrTiO3







## 7 Vibration frequencies

### Stretching frequency of Cl2



### Stretching frequency of Cl2 based on DFPT



### Phonon dispersion of diamond



## 8 Phonons in polar crystals



### GaAs



### SrTiO3




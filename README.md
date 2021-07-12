# Forecasting-Covid-19-Cases-Dynamic-Model
In this analytical project, we apply a dynamic mathematical model for forecasting the probability of healthy people in terms of time and number

According to the latest report of the [World Health Organization](https://www.who.int/emergencies/diseases/novel-coronavirus-2019?adgroupsurvey={adgroupsurvey}&gclid=Cj0KCQjw0K-HBhDDARIsAFJ6UGgVmQxpm7p_xVY4alDUm-5_Rf7kfpIMt2Wa_VTWYjxzrFv5_8zpu2UaAq28EALw_wcB), the outbreak of Covid-19 disease has passed from the epidemic stage to the global stage. In epidemiology, a dynamic model is used to predict the prevalence of the disease, which gives changes in the probability of the number of healthy individuals.
Here is the applied model:

![image](https://user-images.githubusercontent.com/40741680/125354356-f28f7280-e378-11eb-8008-718679544b83.png)

;where:
- **n**: *Population of the society*
- **j**: *Number of healthy individuals*


 * #### Mathematical analysis Procedure:
After representing the above mathematical model with a Liner Dynamic System ![image](https://user-images.githubusercontent.com/40741680/125356271-397e6780-e37b-11eb-8a68-e9cfdac6a875.png) , using the Eigenvalues, Eigenvectors and Jordan canonical form of matrix A we could find probability of the number of healthy individuals in terms of time without solving the two jointly defferential functions in a numerical manner.

- **For n=5:**

The results are shown as follows:
<p align="center">
  
<img src="https://github.com/niushamir/Forecasting-Covid-19-Cases-Dynamic-Model/blob/main/probability%2C%20n%3D5.jpg" width="600" height="400">
  </p>

# Economic-Theory
## Overview
A long-standing idea in economics is the equation MV = PY, where M is the money supply, V is the speed at which money circulates, P is the price level, and Y is real economic output. In simple terms, this equation says that if prices rise (inflation), it must be explained by an increase in how much money exists, and increase how fast money moves through the economy, or a decrease in how much the economy produces, or some combination of the three. Only then does the equation balance.

In this study, I use historical U.S. data to test whether this relationship actually shows up in practice. Specifically, I look at how changes in prices (inflation) relate to growth in the money supply, growth in real output, and changes in the velocity of money.

## Equation
I derived a more intuitve equation from MV = PY using the following steps
- Take the natural log of both sides to get lnM + lnV = lnP + lnY.
- Take the first difference of the equation to get ΔlnM + ΔlnV = ΔlnP + ΔlnY to account for changes over time, providing growth rates. Note that I use log differences instead of regular growth rates to make the results easier to interpret. 
- Rearrange to get ΔlnP = ΔlnM + ΔlnV - ΔlnY

Per this equation, the growth rate in the price (inflation) should be equal to the growth rate in money supply, plus the growth rate in velocity of money, minus the growth rate of real output.
  
## Data
This dataset contains annual observations of CPI, Money supply (M2), Real GDP, and Nominal GDP yearly since 1959. To use my new equation, I had to get the data in log differece form. Note that the velocity of money formula is nominal GDP / Money supply. Real GDP is used as the output (Y) in this study. This created the following variables: 
- Dependent variable: inflation (P)
- Independent variables: output_growth (Y), money_growth (M), and velocity_growth (V).

## Key Findings
The model had a high adjusted R-square of 0.9314, and all of the coefficients were statistically significant at the p=.01 level. The coefficients were as follows:
- A 1 percentage point increase in the growth rate of money supply (M) is associated with a 1.099 percentage point increase in inflaiton
- A 1 percentage point increase in the growth rate of velocity of money (V) is assoicated with a 1.171 percentage point increase in inflation
- A 1 percentage point increase in the growth of real output is associated with a 1.213 percentage point decrease in inflation

This largely proves the equation and theory above: ΔlnP = ΔlnM + ΔlnV - ΔlnY:
- If money supply grows by 1%, velocity of money grows by 1%, and real output grows by 1%, inflation would be predicted as 1.099% + 1.171% − 1.213% = 1.057%. This almost perfectly balances the equation, and shows that US empirical economic data largely supports the equation derived from MV = PY

## Chart and Application
I used R's predict function to predict the change in P, or inflation, for each year since 1959 based on the growth rates of M, Y, and V. The results are can be seen in the graph labeled "Inflationpredicted" in this repository

I also used the predict function to forecast inflation for 2025 based on the growth rates of M, Y, and V from 2024 to 2025. This yielded a predicted inflation of 2.46%, which is lower than the 3% that the market currently expects. This means that something outside of the cardinal equation is affecting prices, such as the recent tariffs enacted by the Trump administration. The higher market-implied inflation rate may reflect cost-push pressures— the recent tariff increases —which raise prices independently of money supply, velocity, or real output.
  

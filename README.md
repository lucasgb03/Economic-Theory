# Economic-Theory
## Overview
A long-standing idea in economics is the equation MV = PY, where M is the money supply, V is the speed at which money circulates, P is the price level, and Y is real economic output. In simple terms, this equation says that if prices rise (inflation), it must be explained by an increase in how much money exists, and increase how fast money moves through the economy, or a decrease in how much the economy produces, or some combination of the three. Only then does the equation balance.

In this study, I use historical U.S. data to test whether this relationship actually shows up in practice. Specifically, I look at how changes in prices (inflation) relate to growth in the money supply, growth in real output, and changes in the velocity of money.

## Equation
I derived a more intuitve equation from MV = PY using the following steps
- Take the natural log of both sides to get lnM + lnV = lnP + lnY.
- Take the first difference of the equation to get ΔlnM + ΔlnV = ΔlnP + ΔlnY to account for changes over time, providing growth rates. Note that I use log differences instead of regular growth rates to make the results easier to interpret. 
- Rearrange to get ΔlnP = ΔlnM + ΔlnV - ΔlnY

Per this equation, the growth rate in the price (inflation) should be equal to the growth rate in money supply, plus the growth rate in velocity of money, minus the growth rate of real output

## Data
This dataset contains annual observations of CPI, Money supply (M2), Real GDP, and Nominal GDP. To use my new equation, I had to get the data in log differece form. Note that the velocity of money formula is nominal GDP / Money supply. Real GDP is used as the output (Y) in this study. This created the following variables: 
- Dependent variable: inflation (P)
- Independent variables: output_growth (Y), money_growth (M), and velocity_growth (V).

## Key Findings
The model had a high adjusted R-square of 0.9314, and all of the coefficients were statistically significant at the p=.01 level. The coefficients were as follows:
- A 1 unit increase in the growth rate of money supply (M) is associated with a 1.099 increase in inflaiton
- A 1 unit increase in the growth rate of velocity of money (V) is assoicated with a 1.171 increase in inflation
- A 1 unit increase in the growth of real output
  

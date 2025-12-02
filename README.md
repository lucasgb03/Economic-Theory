# Economic-Theory
## Overview
A long-standing idea in economics is the equation MV = PY, where M is the money supply, V is the speed at which money circulates, P is the price level, and Y is real economic output. In simple terms, this equation says that if prices rise (inflation), it must be explained by changes in how much money exists, how fast it moves through the economy, how much the economy produces, or some combination of the three.

In this study, I use historical U.S. data to test whether this relationship actually shows up in practice. Specifically, I look at how changes in prices (inflation) relate to growth in the money supply, growth in real output, and changes in the velocity of money.

## Methodology
I derived a more intuitve equation from MV = PY using the following steps
- Take the natural log of both sides to get lnM + lnV = lnP + lnY.
- Take the first difference of the equation to get ΔlnM + ΔlnV = ΔlnP + ΔlnY to account for changes over time, providing growth rates. Note that I use log differences instead of regular growth rates to make the results easier to interpret. 
- Rearrange to get = ΔlnP = ΔlnM + ΔlnV - ΔlnY
Per this equation, the growth rate in the price (inflation) should be equal to the growth rate in money supply, plus the growth rate in velocuty of money, minus the growth rate of real output

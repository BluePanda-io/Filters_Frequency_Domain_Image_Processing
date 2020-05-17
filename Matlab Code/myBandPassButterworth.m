function filtOut = myBandPassButterworth(cutOffLow , cutOffHigh , n, M)

    filtOut = (1-myLowPassButterworth(cutOffLow , n, M)).*(1-myHighPassButterworth(cutOffHigh , n, M));

    surf(filtOut)
end


depth.from.pressure.DK <- function(pressure, # in dbar
                                   latitude # optional; used to calculate gravity variation with latitude
                                   )
{
  if(missing(latitude)) {
    p <- pressure
    g <- 9.80665 # standard gravity
    depth <- ((((-1.82*10^-15 * p + 2.279*10^-10) * p - 2.2512*10^-5) * p + 9.72659) * p) / g
    return(depth)
  } 
  else {
    p <- pressure
    x <- sin(latitude/57.29578)^2
    g <- 9.780318 * (1.0 + (5.2788*10^-3 + 2.36*10^-5 * x) * x) + 1.092*10^-6 * p # location 
    depth <- ((((-1.82*10^-15 * p + 2.279*10^-10) * p - 2.2512*10^-5) * p + 9.72659) * p) / g
    return(depth)
  }
}
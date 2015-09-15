
module.exports = class WebMercator
  @Projector = require "./projector"

  @LATITUDE_MAXIMUM_IN_DEGREES  = @Projector.mercatorYToLatitude(+1.0)
  @LATITUDE_MINIMUM_IN_DEGREES  = @Projector.mercatorYToLatitude(-1.0)
  @LATITUDE_DELTA_IN_DEGREES    = @LATITUDE_MAXIMUM_IN_DEGREES - @LATITUDE_MINIMUM_IN_DEGREES
  @LONGITUDE_MAXIMUM_IN_DEGREES = @Projector.mercatorXToLongitude(+1.0)
  @LONGITUDE_MINIMUM_IN_DEGREES = @Projector.mercatorXToLongitude(-1.0)
  @LONGITUDE_DELTA_IN_DEGREES   = @LONGITUDE_MAXIMUM_IN_DEGREES - @LONGITUDE_MINIMUM_IN_DEGREES

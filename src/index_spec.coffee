
index = require "./index"

describe "index", ->
  it "", ->
    expect(index.Projector).toEqual(jasmine.any(Function))

    expect(index.LATITUDE_MAXIMUM_IN_DEGREES).toBeCloseTo( +85.051128, 5)
    expect(index.LATITUDE_MINIMUM_IN_DEGREES).toBeCloseTo( -85.051128, 5)
    expect(index.LATITUDE_DELTA_IN_DEGREES  ).toBeCloseTo(+170.102257, 5)
    expect(index.LONGITUDE_MAXIMUM_IN_DEGREES).toBeCloseTo(+180.0, 5)
    expect(index.LONGITUDE_MINIMUM_IN_DEGREES).toBeCloseTo(-180.0, 5)
    expect(index.LONGITUDE_DELTA_IN_DEGREES  ).toBeCloseTo(+360.0, 5)

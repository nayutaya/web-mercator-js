
Projector = require "./Projector"

describe "Projector", ->
  describe ".latitudeToMercatorY", ->
    it "緯度をメルカトルY座標に変換する", ->
      expect(Projector.latitudeToMercatorY(+85.0511)).toBeCloseTo(+1.0,  5)
      expect(Projector.latitudeToMercatorY(  0.0000)).toBeCloseTo( 0.0, 15)
      expect(Projector.latitudeToMercatorY(-85.0511)).toBeCloseTo(-1.0,  5)

  describe ".longitudeToMercatorX", ->
    it "経度をメルカトルX座標に変換する", ->
      expect(Projector.longitudeToMercatorX(+180.0)).toBeCloseTo(+1.0, 5)
      expect(Projector.longitudeToMercatorX( +90.0)).toBeCloseTo(+0.5, 5)
      expect(Projector.longitudeToMercatorX(   0.0)).toBeCloseTo( 0.0, 5)
      expect(Projector.longitudeToMercatorX( -90.0)).toBeCloseTo(-0.5, 5)
      expect(Projector.longitudeToMercatorX(-180.0)).toBeCloseTo(-1.0, 5)

  describe ".mercatorYToLatitude", ->
    it "メルカトルY座標を緯度に変換する", ->
      expect(Projector.mercatorYToLatitude(+1.0)).toBeCloseTo(+85.0511,  4)
      expect(Projector.mercatorYToLatitude( 0.0)).toBeCloseTo(  0.0000, 15)
      expect(Projector.mercatorYToLatitude(-1.0)).toBeCloseTo(-85.0511,  4)

  describe ".mercatorXToLongitude", ->
    it "メルカトルX座標を経度に変換する", ->
      expect(Projector.mercatorXToLongitude(+1.5)).toBeCloseTo( -90.0, 15)
      expect(Projector.mercatorXToLongitude(+1.0)).toBeCloseTo(-180.0, 15)
      expect(Projector.mercatorXToLongitude(+0.5)).toBeCloseTo( +90.0, 15)
      expect(Projector.mercatorXToLongitude( 0.0)).toBeCloseTo(   0.0, 15)
      expect(Projector.mercatorXToLongitude(-0.5)).toBeCloseTo( -90.0, 15)
      expect(Projector.mercatorXToLongitude(-1.0)).toBeCloseTo(-180.0, 15)
      expect(Projector.mercatorXToLongitude(-1.5)).toBeCloseTo( +90.0, 15)

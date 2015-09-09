
Projector = require "./Projector"

describe "Projector", ->
  describe ".latToMy", ->
    it "緯度をメルカトルY座標に変換する", ->
      expect(Projector.latToMy(+85.0511)).toBeCloseTo(+1.0,  5)
      expect(Projector.latToMy(  0.0000)).toBeCloseTo( 0.0, 15)
      expect(Projector.latToMy(-85.0511)).toBeCloseTo(-1.0,  5)

  describe ".lngToMx", ->
    it "経度をメルカトルX座標に変換する", ->
      expect(Projector.lngToMx(+180.0)).toBeCloseTo(+1.0, 5)
      expect(Projector.lngToMx( +90.0)).toBeCloseTo(+0.5, 5)
      expect(Projector.lngToMx(   0.0)).toBeCloseTo( 0.0, 5)
      expect(Projector.lngToMx( -90.0)).toBeCloseTo(-0.5, 5)
      expect(Projector.lngToMx(-180.0)).toBeCloseTo(-1.0, 5)

  describe ".myToLat", ->
    it "メルカトルY座標を緯度に変換する", ->
      expect(Projector.myToLat(+1.0)).toBeCloseTo(+85.0511,  4)
      expect(Projector.myToLat( 0.0)).toBeCloseTo(  0.0000, 15)
      expect(Projector.myToLat(-1.0)).toBeCloseTo(-85.0511,  4)

  ###
  describe(".mxToLng", function() {
    it("メルカトルX座標を経度に変換する", function() {
      assertRoughlyEquals( -90.0, Projector.mxToLng(+1.5), 1e-15);
      assertRoughlyEquals(-180.0, Projector.mxToLng(+1.0), 1e-15);
      assertRoughlyEquals( +90.0, Projector.mxToLng(+0.5), 1e-15);
      assertRoughlyEquals(   0.0, Projector.mxToLng( 0.0), 1e-15);
      assertRoughlyEquals( -90.0, Projector.mxToLng(-0.5), 1e-15);
      assertRoughlyEquals(-180.0, Projector.mxToLng(-1.0), 1e-15);
      assertRoughlyEquals( +90.0, Projector.mxToLng(-1.5), 1e-15);
    });
  });
  ###

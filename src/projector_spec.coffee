
Projector = require "./projector"

describe "Projector", ->
  describe ".latToMy", ->
    it "緯度をメルカトルY座標に変換する", ->
      expect(Projector.latToMy(+85.0511)).toBeCloseTo(+1.0, 5)
      expect(Projector.latToMy(  0.0000)).toBeCloseTo( 0.0, 5)
      expect(Projector.latToMy(-85.0511)).toBeCloseTo(-1.0, 5)

  ###
  describe(".lngToMx", function() {
    it("経度をメルカトルX座標に変換する", function() {
      assertRoughlyEquals(+1.0, projector.lngToMx(+180.0), 1e-05);
      assertRoughlyEquals(+0.5, projector.lngToMx( +90.0), 1e-05);
      assertRoughlyEquals( 0.0, projector.lngToMx(   0.0), 1e-05);
      assertRoughlyEquals(-0.5, projector.lngToMx( -90.0), 1e-05);
      assertRoughlyEquals(-1.0, projector.lngToMx(-180.0), 1e-05);
    });
  });

  describe(".myToLat", function() {
    it("メルカトルY座標を緯度に変換する", function() {
      assertRoughlyEquals(+85.0511, projector.myToLat(+1.0), 1e-04);
      assertRoughlyEquals(  0.0,    projector.myToLat( 0.0), 1e-15);
      assertRoughlyEquals(-85.0511, projector.myToLat(-1.0), 1e-04);
    });
  });

  describe(".mxToLng", function() {
    it("メルカトルX座標を経度に変換する", function() {
      assertRoughlyEquals( -90.0, projector.mxToLng(+1.5), 1e-15);
      assertRoughlyEquals(-180.0, projector.mxToLng(+1.0), 1e-15);
      assertRoughlyEquals( +90.0, projector.mxToLng(+0.5), 1e-15);
      assertRoughlyEquals(   0.0, projector.mxToLng( 0.0), 1e-15);
      assertRoughlyEquals( -90.0, projector.mxToLng(-0.5), 1e-15);
      assertRoughlyEquals(-180.0, projector.mxToLng(-1.0), 1e-15);
      assertRoughlyEquals( +90.0, projector.mxToLng(-1.5), 1e-15);
    });
  });
  ###


Projector = require "./projector"

describe "Projector", ->
  describe ".latToMy", ->
    it "緯度をメルカトルY座標に変換する", ->
      expect(Projector.latToMy(+85.0511)).toBeCloseTo(+1.0, 5)
      expect(Projector.latToMy(  0.0000)).toBeCloseTo( 0.0, 5)
      expect(Projector.latToMy(-85.0511)).toBeCloseTo(-1.0, 5)

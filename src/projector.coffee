
module.exports = class Projector
  # 度をラジアンに変換するための係数
  DEG2RAD = Math.PI / 180.0
  # ラジアンを度に変換するための係数
  RAD2DEG = 180.0 / Math.PI

  # 双曲線正弦を求める
  sinh = (x)-> (Math.exp(x) - Math.exp(-x)) / 2.0
  # 双曲線余弦を求める
  cosh = (x)-> (Math.exp(x) + Math.exp(-x)) / 2.0
  # 双曲線正接を求める
  tanh = (x)-> sinh(x) / cosh(x)
  # 双曲線逆正接を求める
  atanh = (x)-> Math.log((1 + x) / (1 - x)) / 2

  # 緯度をメルカトルY座標に変換する
  @latToMy: (lat)->
    return atanh(Math.sin(lat * DEG2RAD)) / Math.PI

  # 経度をメルカトルX座標に変換する
  @lngToMx: (lng)->
    return lng / 180.0

  # メルカトルY座標を緯度に変換する
  @myToLat: (my)->
    return Math.asin(tanh(my * Math.PI)) * RAD2DEG

  ###
  // メルカトルX座標を経度に変換する
  projector.mxToLng = function(mx) {
    var x = math.mod(mx, 2.0) - 2.0;
    if ( x < -1.0 ) {
      x += 2.0;
    }
    return x * 180.0;
  };
  ###


module.exports = class Projector
  # 度をラジアンに変換するための係数
  DEGREE_TO_RADIAN = Math.PI / 180.0
  # ラジアンを度に変換するための係数
  RADIAN_TO_DEGREE = 180.0 / Math.PI

  # 双曲線正弦を求める
  sinh = (x)-> (Math.exp(x) - Math.exp(-x)) / 2.0
  # 双曲線余弦を求める
  cosh = (x)-> (Math.exp(x) + Math.exp(-x)) / 2.0
  # 双曲線正接を求める
  tanh = (x)-> sinh(x) / cosh(x)
  # 双曲線逆正接を求める
  atanh = (x)-> Math.log((1 + x) / (1 - x)) / 2

  # 緯度をメルカトルY座標に変換する
  @latitudeToMercatorY: (latitude)->
    return atanh(Math.sin(latitude * DEGREE_TO_RADIAN)) / Math.PI

  # 経度をメルカトルX座標に変換する
  @longitudeToMercatorX: (longitude)->
    return longitude / 180.0

  # メルカトルY座標を緯度に変換する
  @mercatorYToLatitude: (mercatorY)->
    return Math.asin(tanh(mercatorY * Math.PI)) * RADIAN_TO_DEGREE

  # メルカトルX座標を経度に変換する
  @mercatorXToLongitude: (mercatorX)->
    x  = (mercatorX %% 2.0) - 2.0
    x += 2.0 if x < -1.0
    return x * 180.0

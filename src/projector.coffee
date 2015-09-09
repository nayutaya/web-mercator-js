
module.exports = class Projector
  # 度をラジアンに変換するための係数
  DEG2RAD = Math.PI / 180.0

  # 双曲線逆正接を求める
  atanh = (x)-> Math.log((1 + x) / (1 - x)) / 2

  @latToMy: (lat)->
    return atanh(Math.sin(lat * DEG2RAD)) / Math.PI

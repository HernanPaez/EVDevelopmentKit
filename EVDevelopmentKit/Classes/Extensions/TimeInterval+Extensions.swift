import Foundation

extension TimeInterval {
  
  typealias HoursMinutesSeconds = (hours: Double, minutes: Double, seconds: Double)
  
  static func hoursMinutesSeconds(timeInterval: TimeInterval) -> HoursMinutesSeconds {
    return timeInterval.hoursMinutesSeconds()
  }
  
  func hoursMinutesSeconds() -> HoursMinutesSeconds {
    let (hr,  minf) = modf(self / 3600)
    let (min, secf) = modf(60 * minf)
    let (sec, _ /*milif*/) = modf(60 * secf)
    return (hr, min, sec)
  }
  
}

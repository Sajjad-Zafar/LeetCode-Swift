// 1185. Day of the Week

import UIKit

class Solution {
    func dayOfTheWeek(_ day: Int, _ month: Int, _ year: Int) -> String {
        let dateComponents = DateComponents(year: year, month: month, day: day)
        guard let date = Calendar.current.date(from: dateComponents) else {
            return ""
        }
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE"
        return formatter.string(from: date)
    }
}

let reslt = Solution().dayOfTheWeek(31, 08, 2019)

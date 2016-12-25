//
//  OKConfiguration.swift
//  OKKLineSwift
//
//  Created by SHB on 2016/11/3.
//  Copyright © 2016年 Herb. All rights reserved.
//

#if os(iOS) || os(tvOS)
    import UIKit
#else
    import Cocoa
#endif

/// K线类型
enum OKKLineType: Int {
    case KLine // K线
    case timeLine // 分时图
    case other // 其他
}

/// 指标种类
enum OKIndicatorType {
    case NONE
    case MA([Int])
    case MA_VOLUME([Int])
    case EMA([Int])
    case EMA_VOLUME([Int])
    case DIF, DEA, MACD
    case KDJ, KDJ_K, KDJ_D, KDJ_J
    case BOLL(Int), BOLL_MB, BOLL_UP, BOLL_DN
    case RSI
    case VOL
    case DMI
}

/// 时间线分隔
enum OKTimeLineType: Int {
    case realTime = 1 // 分时
    case oneMinute = 60 // 1分
    case fiveMinute = 300 // 5分
    case fifteenMinute = 900 // 15分
    case thirtyMinute = 1800 // 30分
    case oneHour = 3600 // 60分
    case oneDay = 86400 // 日
    case oneWeek = 604800 // 周
}

public final class OKConfiguration {
    
//    static let shared: OKConfiguration = OKConfiguration()
    
    public init() {
        dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "HH:mm"
    }
    
    // MARK: - Common
    var dateFormatter: DateFormatter
    var dataSource: OKDataSource = OKDataSource()
    ///临时数据
//    var klineModels = [OKKLineModel]()
//    
//    var drawKLineModels = [OKKLineModel]()
//    var klineColors = [CGColor]()
//    var klinePositions = [CGPoint]()
    
    /// 是否显示价格
    var showPriceView: Bool = true
    
    /// 全局主题
    let theme: OKTheme = OKTheme()
    /// 主图图表的背景色
    var mainViewBgColor: OKColor = OKColor(hexRGB: 0x181C20)
    /// 成交量视图背景色
    var volumeViewBgColor: OKColor = OKColor(hexRGB: 0x181C20)
    /// 指标视图背景色
    var accessoryViewBgColor: OKColor = OKColor(hexRGB: 0x181C20)
    
    /// 辅助视图背景色(e.g. 日期的背景色)
    var assistViewBgColor: OKColor = OKColor(hexRGB: 0x1D2227)
    /// 辅助视图字体颜色(e.g. 日期的字体颜色)
    var assistTextColor: OKColor = OKColor(hexRGB: 0x565A64)
    /// 辅助视图字体大小(e.g. 日期的字体大小)
    var assistTextFont: OKFont = OKFont.systemFont(ofSize: 11)
    /// 涨的颜色
    var increaseColor: OKColor = OKColor(hexRGB: 0xFF5353)
    /// 跌的颜色
    var decreaseColor: OKColor = OKColor(hexRGB: 0x00B07C)
    
    /// 分时线颜色
    var realtimeLineColor: OKColor = OKColor(hexRGB: 0x49A5FF)
    /// 长按辅助线颜色
    var longPressLineColor: OKColor = OKColor(hexRGB: 0xE1E2E6)
    /// 长按辅助线宽度
    var longPressLineWidth: CGFloat = 0.5
    
    var indicatorLineWidth: CGFloat = 0.8
    /// 时间线
    var timeLineType: OKTimeLineType = .realTime
    /// k线的间隔
    var klineSpace: CGFloat = 1.0
    
    
    // MARK: - 主图
    
    /// 主图比例
    var mainScale: CGFloat = 0.50
    /// 主图顶部提示信息高度
    var mainTopAssistViewHeight: CGFloat = 20.0
    /// 主图底部时间线信息高度
    var mainBottomAssistViewHeight: CGFloat = 15.0
    /// 主图分时线宽度
    var realtimeLineWidth: CGFloat = 1.0
    /// k线图主体宽度
    var klineWidth: CGFloat = 5.0
    /// 上下影线宽度
    var klineShadowLineWidth: CGFloat = 1.0
    /// k线最大宽度
    var klineMaxWidth: CGFloat = 20.0
    /// k线最小宽度
    var klineMinWidth: CGFloat = 2.0
    /// k线缩放界限
    var klineScale: CGFloat = 0.03
    /// k线缩放因子
    var klineScaleFactor: CGFloat = 0.03
    /// 主图K线类型
    var klineType: OKKLineType = .KLine
    /// 主图指标类型
    var mainIndicatorType: OKIndicatorType = .MA([12, 26])
    
    // MARK: - 成交量图(volume)
    
    /// 是否显示成交量视图
    var showVolumeView: Bool = true
    /// 成交量比例
    var volumeScale: CGFloat = 0.25
    /// 顶部提示信息高度
    var volumeTopViewHeight: CGFloat = 20.0
    /// 成交量图分时线宽度
    var volumeLineWidth: CGFloat = 0.5
    /// 成交量指标类型
    var volumeIndicatorType: OKIndicatorType = .EMA_VOLUME([12, 26])
    
    // MARK: - 指标图(accessory)
    
    /// 是否显示指标图
    var showAccessoryView: Bool = true
    /// 指标图比例
    var accessoryScale: CGFloat = 0.25
    /// 顶部提示信息高度
    var accessoryTopViewHeight: CGFloat = 20.0
    /// 指标图分时线宽度
    var accessoryLineWidth: CGFloat = 0.5
    /// 辅助图指标类型
    var accessoryindicatorType: OKIndicatorType = .MACD
 
    // MARK: - SegmentView
    
    // MARK: - ValueView
    var valueViewBgColor: OKColor = OKColor(hexRGB: 0x181C20)
    var valueViewFont: OKFont = OKFont.systemFont(ofSize: 11)
    var valueViewTextColor: OKColor = OKColor(hexRGB: 0xDCDADC)
    
}

/// 皮肤主题
class OKTheme {
    var DIFColor: OKColor = OKColor(hexRGB: 0xFF8D1D)
    var DEAColor: OKColor = OKColor(hexRGB: 0x0DAEE6)
    var MACDColor: OKColor = OKColor(hexRGB: 0xFFC90E)
    var KDJ_KColor: OKColor = OKColor(hexRGB: 0xFF8D1D)
    var KDJ_DColor: OKColor = OKColor(hexRGB: 0x0DAEE6)
    var KDJ_JColor: OKColor = OKColor(hexRGB: 0xE970DC)
    var BOLL_MBColor: OKColor = OKColor(hexRGB: 0xFFAEBF)
    var BOLL_UPColor: OKColor = OKColor(hexRGB: 0xFFC90E)
    var BOLL_DNColor: OKColor = OKColor(hexRGB: 0x0DAEE6)
    public func MAColor(day: Int) -> OKColor {
        return OKColor(hexRGB: 0x4498EA + day)
    }
    
    public func EMAColor(day: Int) -> OKColor {
        return OKColor(hexRGB: 0x4498EA + day)
    }
}

class OKDataSource {
    var drawRange: NSRange?
    var klineModels = [OKKLineModel]()
    var drawKLineModels = [OKKLineModel]()
}

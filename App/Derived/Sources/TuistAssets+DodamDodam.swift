// swiftlint:disable all
// swift-format-ignore-file
// swiftformat:disable all
// Generated using tuist — https://github.com/tuist/tuist

#if os(macOS)
  import AppKit
#elseif os(iOS)
  import UIKit
#elseif os(tvOS) || os(watchOS)
  import UIKit
#endif

// swiftlint:disable superfluous_disable_command file_length implicit_return

// MARK: - Asset Catalogs

// swiftlint:disable identifier_name line_length nesting type_body_length type_name
public enum DodamDodamAsset {
  public static let accentColor = DodamDodamColors(name: "AccentColor")
  public static let backGorundColor = DodamDodamColors(name: "BackGorundColor")
  public static let gray = DodamDodamColors(name: "Gray")
  public static let main01 = DodamDodamColors(name: "Main01")
  public static let main02 = DodamDodamColors(name: "Main02")
  public static let main03 = DodamDodamColors(name: "Main03")
  public static let main04 = DodamDodamColors(name: "Main04")
  public static let main05 = DodamDodamColors(name: "Main05")
  public static let main06 = DodamDodamColors(name: "Main06")
  public static let mainColor = DodamDodamColors(name: "MainColor")
}
// swiftlint:enable identifier_name line_length nesting type_body_length type_name

// MARK: - Implementation Details

public final class DodamDodamColors {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Color = NSColor
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Color = UIColor
  #endif

  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  public private(set) lazy var color: Color = {
    guard let color = Color(asset: self) else {
      fatalError("Unable to load color asset named \(name).")
    }
    return color
  }()

  fileprivate init(name: String) {
    self.name = name
  }
}

public extension DodamDodamColors.Color {
  @available(iOS 11.0, tvOS 11.0, watchOS 4.0, macOS 10.13, *)
  convenience init?(asset: DodamDodamColors) {
    let bundle = DodamDodamResources.bundle
    #if os(iOS) || os(tvOS)
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSColor.Name(asset.name), bundle: bundle)
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:enable all
// swiftformat:enable all

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
  public static let _525252 = DodamDodamColors(name: "525252")
  public static let _585858 = DodamDodamColors(name: "585858")
  public static let _6B6B6B = DodamDodamColors(name: "6B6B6B")
  public static let _737886 = DodamDodamColors(name: "737886")
  public static let _797979 = DodamDodamColors(name: "797979")
  public static let _898989 = DodamDodamColors(name: "898989")
  public static let _969696 = DodamDodamColors(name: "969696")
  public static let a4B3Da = DodamDodamColors(name: "A4B3DA")
  public static let accentColor = DodamDodamColors(name: "AccentColor")
  public static let backGroundColor = DodamDodamColors(name: "BackGroundColor")
  public static let gray = DodamDodamColors(name: "Gray")
  public static let main01 = DodamDodamColors(name: "Main01")
  public static let main02 = DodamDodamColors(name: "Main02")
  public static let main03 = DodamDodamColors(name: "Main03")
  public static let main04 = DodamDodamColors(name: "Main04")
  public static let main05 = DodamDodamColors(name: "Main05")
  public static let main06 = DodamDodamColors(name: "Main06")
  public static let mainColor = DodamDodamColors(name: "MainColor")
  public static let d9D9D9 = DodamDodamColors(name: "D9D9D9")
  public static let dadada = DodamDodamColors(name: "DADADA")
  public static let dod = DodamDodamImages(name: "Dod")
  public static let eeeeee = DodamDodamColors(name: "EEEEEE")
  public static let ffc85C = DodamDodamColors(name: "FFC85C")
  public static let ffef5C = DodamDodamColors(name: "FFEF5C")
  public static let fff6E1 = DodamDodamColors(name: "FFF6E1")
  public static let chat = DodamDodamImages(name: "Chat")
  public static let dodam = DodamDodamImages(name: "Dodam")
  public static let googleLogoImage = DodamDodamImages(name: "googleLogoImage")
  public static let hospital = DodamDodamImages(name: "hospital")
  public static let map = DodamDodamImages(name: "map")
  public static let map1 = DodamDodamImages(name: "map1")
  public static let map2 = DodamDodamImages(name: "map2")
  public static let map3 = DodamDodamImages(name: "map3")
  public static let map4 = DodamDodamImages(name: "map4")
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

public struct DodamDodamImages {
  public fileprivate(set) var name: String

  #if os(macOS)
  public typealias Image = NSImage
  #elseif os(iOS) || os(tvOS) || os(watchOS)
  public typealias Image = UIImage
  #endif

  public var image: Image {
    let bundle = DodamDodamResources.bundle
    #if os(iOS) || os(tvOS)
    let image = Image(named: name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    let image = bundle.image(forResource: NSImage.Name(name))
    #elseif os(watchOS)
    let image = Image(named: name)
    #endif
    guard let result = image else {
      fatalError("Unable to load image asset named \(name).")
    }
    return result
  }
}

public extension DodamDodamImages.Image {
  @available(macOS, deprecated,
    message: "This initializer is unsafe on macOS, please use the DodamDodamImages.image property")
  convenience init?(asset: DodamDodamImages) {
    #if os(iOS) || os(tvOS)
    let bundle = DodamDodamResources.bundle
    self.init(named: asset.name, in: bundle, compatibleWith: nil)
    #elseif os(macOS)
    self.init(named: NSImage.Name(asset.name))
    #elseif os(watchOS)
    self.init(named: asset.name)
    #endif
  }
}

// swiftlint:enable all
// swiftformat:enable all

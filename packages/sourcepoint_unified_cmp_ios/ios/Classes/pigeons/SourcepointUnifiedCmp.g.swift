// Autogenerated from Pigeon (v20.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon

import Foundation

#if os(iOS)
  import Flutter
#elseif os(macOS)
  import FlutterMacOS
#else
  #error("Unsupported platform.")
#endif

/// Error class for passing custom error details to Dart side.
final class HostApiFlutterError: Error {
  let code: String
  let message: String?
  let details: Any?

  init(code: String, message: String?, details: Any?) {
    self.code = code
    self.message = message
    self.details = details
  }

  var localizedDescription: String {
    "HostApiFlutterError(code: \(code), message: \(message ?? "<nil>"), details: \(details ?? "<nil>")"
  }
}

private func wrapResult(_ result: Any?) -> [Any?] {
  [result]
}

private func wrapError(_ error: Any) -> [Any?] {
  if let pigeonError = error as? HostApiFlutterError {
    return [
      pigeonError.code,
      pigeonError.message,
      pigeonError.details,
    ]
  }
  if let flutterError = error as? FlutterError {
    return [
      flutterError.code,
      flutterError.message,
      flutterError.details,
    ]
  }
  return [
    "\(error)",
    "\(type(of: error))",
    "Stacktrace: \(Thread.callStackSymbols)",
  ]
}

private func createConnectionError(withChannelName channelName: String) -> HostApiFlutterError {
  HostApiFlutterError(
    code: "channel-error",
    message: "Unable to establish connection on channel: '\(channelName)'.",
    details: ""
  )
}

private func isNullish(_ value: Any?) -> Bool {
  value is NSNull || value == nil
}

private func nilOrValue<T>(_ value: Any?) -> T? {
  if value is NSNull { return nil }
  return value as! T?
}

enum HostAPIPMTab: Int {
  case defaults = 0
  case purposes = 1
  case vendors = 2
  case features = 3
}

enum HostAPICampaignType: Int {
  case gdpr = 0
  case ccpa = 1
}

enum HostAPIMessageType: Int {
  case mobile = 0
  case ott = 1
  case legacyOtt = 2
}

enum HostAPIGranularState: Int {
  case all = 0
  case some = 1
  case none = 2
}

enum HostAPIActionType: Int {
  case showOptions = 0
  case rejectAll = 1
  case acceptAll = 2
  case msgCancel = 3
  case custom = 4
  case saveAndExit = 5
  case pmDismiss = 6
  case getMsgError = 7
  case getMessageNotCalled = 8
  case unknown = 9
}

enum HostAPIMessageLanguage: Int {
  case english = 0
  case french = 1
  case german = 2
  case italian = 3
  case spanish = 4
}

enum HostAPICampaignsEnv: Int {
  case stage = 0
  case publicEnv = 1
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPISPError {
  var spCode: String
  var description: String

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPISPError? {
    let spCode = __pigeon_list[0] as! String
    let description = __pigeon_list[1] as! String

    return HostAPISPError(
      spCode: spCode,
      description: description
    )
  }

  func toList() -> [Any?] {
    [
      spCode,
      description,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPIConsentAction {
  var actionType: HostAPIActionType
  var pubData: String
  var campaignType: HostAPICampaignType
  var customActionId: String?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPIConsentAction? {
    let actionType = __pigeon_list[0] as! HostAPIActionType
    let pubData = __pigeon_list[1] as! String
    let campaignType = __pigeon_list[2] as! HostAPICampaignType
    let customActionId: String? = nilOrValue(__pigeon_list[3])

    return HostAPIConsentAction(
      actionType: actionType,
      pubData: pubData,
      campaignType: campaignType,
      customActionId: customActionId
    )
  }

  func toList() -> [Any?] {
    [
      actionType,
      pubData,
      campaignType,
      customActionId,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPIGDPRPurposeGrants {
  var granted: Bool
  var purposeGrants: [String?: Bool?]?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPIGDPRPurposeGrants? {
    let granted = __pigeon_list[0] as! Bool
    let purposeGrants: [String?: Bool?]? = nilOrValue(__pigeon_list[1])

    return HostAPIGDPRPurposeGrants(
      granted: granted,
      purposeGrants: purposeGrants
    )
  }

  func toList() -> [Any?] {
    [
      granted,
      purposeGrants,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPIGranularStatus {
  var defaultConsent: Bool?
  var previousOptInAll: Bool?
  var purposeConsent: HostAPIGranularState?
  var purposeLegInt: HostAPIGranularState?
  var vendorConsent: HostAPIGranularState?
  var vendorLegInt: HostAPIGranularState?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPIGranularStatus? {
    let defaultConsent: Bool? = nilOrValue(__pigeon_list[0])
    let previousOptInAll: Bool? = nilOrValue(__pigeon_list[1])
    let purposeConsent: HostAPIGranularState? = nilOrValue(__pigeon_list[2])
    let purposeLegInt: HostAPIGranularState? = nilOrValue(__pigeon_list[3])
    let vendorConsent: HostAPIGranularState? = nilOrValue(__pigeon_list[4])
    let vendorLegInt: HostAPIGranularState? = nilOrValue(__pigeon_list[5])

    return HostAPIGranularStatus(
      defaultConsent: defaultConsent,
      previousOptInAll: previousOptInAll,
      purposeConsent: purposeConsent,
      purposeLegInt: purposeLegInt,
      vendorConsent: vendorConsent,
      vendorLegInt: vendorLegInt
    )
  }

  func toList() -> [Any?] {
    [
      defaultConsent,
      previousOptInAll,
      purposeConsent,
      purposeLegInt,
      vendorConsent,
      vendorLegInt,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPIConsentStatus {
  var consentedAll: Bool?
  var consentedToAny: Bool?
  var granularStatus: HostAPIGranularStatus?
  var hasConsentData: Bool?
  var rejectedAny: Bool?
  var rejectedLI: Bool?
  var legalBasisChanges: Bool?
  var vendorListAdditions: Bool?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPIConsentStatus? {
    let consentedAll: Bool? = nilOrValue(__pigeon_list[0])
    let consentedToAny: Bool? = nilOrValue(__pigeon_list[1])
    let granularStatus: HostAPIGranularStatus? = nilOrValue(__pigeon_list[2])
    let hasConsentData: Bool? = nilOrValue(__pigeon_list[3])
    let rejectedAny: Bool? = nilOrValue(__pigeon_list[4])
    let rejectedLI: Bool? = nilOrValue(__pigeon_list[5])
    let legalBasisChanges: Bool? = nilOrValue(__pigeon_list[6])
    let vendorListAdditions: Bool? = nilOrValue(__pigeon_list[7])

    return HostAPIConsentStatus(
      consentedAll: consentedAll,
      consentedToAny: consentedToAny,
      granularStatus: granularStatus,
      hasConsentData: hasConsentData,
      rejectedAny: rejectedAny,
      rejectedLI: rejectedLI,
      legalBasisChanges: legalBasisChanges,
      vendorListAdditions: vendorListAdditions
    )
  }

  func toList() -> [Any?] {
    [
      consentedAll,
      consentedToAny,
      granularStatus,
      hasConsentData,
      rejectedAny,
      rejectedLI,
      legalBasisChanges,
      vendorListAdditions,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPIGDPRConsent {
  var uuid: String?
  var tcData: [String?: String?]?
  var grants: [String?: HostAPIGDPRPurposeGrants?]?
  var euconsent: String
  var acceptedCategories: [String?]?
  var apply: Bool
  var consentStatus: HostAPIConsentStatus?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPIGDPRConsent? {
    let uuid: String? = nilOrValue(__pigeon_list[0])
    let tcData: [String?: String?]? = nilOrValue(__pigeon_list[1])
    let grants: [String?: HostAPIGDPRPurposeGrants?]? = nilOrValue(__pigeon_list[2])
    let euconsent = __pigeon_list[3] as! String
    let acceptedCategories: [String?]? = nilOrValue(__pigeon_list[4])
    let apply = __pigeon_list[5] as! Bool
    let consentStatus: HostAPIConsentStatus? = nilOrValue(__pigeon_list[6])

    return HostAPIGDPRConsent(
      uuid: uuid,
      tcData: tcData,
      grants: grants,
      euconsent: euconsent,
      acceptedCategories: acceptedCategories,
      apply: apply,
      consentStatus: consentStatus
    )
  }

  func toList() -> [Any?] {
    [
      uuid,
      tcData,
      grants,
      euconsent,
      acceptedCategories,
      apply,
      consentStatus,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPICCPAConsent {
  var uuid: String?
  var rejectedCategories: [String?]?
  var rejectedVendors: [String?]?
  var status: String?
  var uspstring: String
  var apply: Bool

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPICCPAConsent? {
    let uuid: String? = nilOrValue(__pigeon_list[0])
    let rejectedCategories: [String?]? = nilOrValue(__pigeon_list[1])
    let rejectedVendors: [String?]? = nilOrValue(__pigeon_list[2])
    let status: String? = nilOrValue(__pigeon_list[3])
    let uspstring = __pigeon_list[4] as! String
    let apply = __pigeon_list[5] as! Bool

    return HostAPICCPAConsent(
      uuid: uuid,
      rejectedCategories: rejectedCategories,
      rejectedVendors: rejectedVendors,
      status: status,
      uspstring: uspstring,
      apply: apply
    )
  }

  func toList() -> [Any?] {
    [
      uuid,
      rejectedCategories,
      rejectedVendors,
      status,
      uspstring,
      apply,
    ]
  }
}

/// Generated class from Pigeon that represents data sent in messages.
struct HostAPISPConsent {
  var gdpr: HostAPIGDPRConsent?
  var ccpa: HostAPICCPAConsent?

  // swift-format-ignore: AlwaysUseLowerCamelCase
  static func fromList(_ __pigeon_list: [Any?]) -> HostAPISPConsent? {
    let gdpr: HostAPIGDPRConsent? = nilOrValue(__pigeon_list[0])
    let ccpa: HostAPICCPAConsent? = nilOrValue(__pigeon_list[1])

    return HostAPISPConsent(
      gdpr: gdpr,
      ccpa: ccpa
    )
  }

  func toList() -> [Any?] {
    [
      gdpr,
      ccpa,
    ]
  }
}

private class SourcepointUnifiedCmpPigeonCodecReader: FlutterStandardReader {
  override func readValue(ofType type: UInt8) -> Any? {
    switch type {
    case 129:
      return HostAPISPError.fromList(readValue() as! [Any?])
    case 130:
      return HostAPIConsentAction.fromList(readValue() as! [Any?])
    case 131:
      return HostAPIGDPRPurposeGrants.fromList(readValue() as! [Any?])
    case 132:
      return HostAPIGranularStatus.fromList(readValue() as! [Any?])
    case 133:
      return HostAPIConsentStatus.fromList(readValue() as! [Any?])
    case 134:
      return HostAPIGDPRConsent.fromList(readValue() as! [Any?])
    case 135:
      return HostAPICCPAConsent.fromList(readValue() as! [Any?])
    case 136:
      return HostAPISPConsent.fromList(readValue() as! [Any?])
    case 137:
      var enumResult: HostAPIPMTab? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPIPMTab(rawValue: enumResultAsInt)
      }
      return enumResult
    case 138:
      var enumResult: HostAPICampaignType? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPICampaignType(rawValue: enumResultAsInt)
      }
      return enumResult
    case 139:
      var enumResult: HostAPIMessageType? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPIMessageType(rawValue: enumResultAsInt)
      }
      return enumResult
    case 140:
      var enumResult: HostAPIGranularState? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPIGranularState(rawValue: enumResultAsInt)
      }
      return enumResult
    case 141:
      var enumResult: HostAPIActionType? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPIActionType(rawValue: enumResultAsInt)
      }
      return enumResult
    case 142:
      var enumResult: HostAPIMessageLanguage? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPIMessageLanguage(rawValue: enumResultAsInt)
      }
      return enumResult
    case 143:
      var enumResult: HostAPICampaignsEnv? = nil
      let enumResultAsInt: Int? = nilOrValue(readValue() as? Int)
      if let enumResultAsInt {
        enumResult = HostAPICampaignsEnv(rawValue: enumResultAsInt)
      }
      return enumResult
    default:
      return super.readValue(ofType: type)
    }
  }
}

private class SourcepointUnifiedCmpPigeonCodecWriter: FlutterStandardWriter {
  override func writeValue(_ value: Any) {
    if let value = value as? HostAPISPError {
      super.writeByte(129)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIConsentAction {
      super.writeByte(130)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIGDPRPurposeGrants {
      super.writeByte(131)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIGranularStatus {
      super.writeByte(132)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIConsentStatus {
      super.writeByte(133)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIGDPRConsent {
      super.writeByte(134)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPICCPAConsent {
      super.writeByte(135)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPISPConsent {
      super.writeByte(136)
      super.writeValue(value.toList())
    } else if let value = value as? HostAPIPMTab {
      super.writeByte(137)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPICampaignType {
      super.writeByte(138)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPIMessageType {
      super.writeByte(139)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPIGranularState {
      super.writeByte(140)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPIActionType {
      super.writeByte(141)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPIMessageLanguage {
      super.writeByte(142)
      super.writeValue(value.rawValue)
    } else if let value = value as? HostAPICampaignsEnv {
      super.writeByte(143)
      super.writeValue(value.rawValue)
    } else {
      super.writeValue(value)
    }
  }
}

private class SourcepointUnifiedCmpPigeonCodecReaderWriter: FlutterStandardReaderWriter {
  override func reader(with data: Data) -> FlutterStandardReader {
    SourcepointUnifiedCmpPigeonCodecReader(data: data)
  }

  override func writer(with data: NSMutableData) -> FlutterStandardWriter {
    SourcepointUnifiedCmpPigeonCodecWriter(data: data)
  }
}

class SourcepointUnifiedCmpPigeonCodec: FlutterStandardMessageCodec, @unchecked Sendable {
  static let shared =
    SourcepointUnifiedCmpPigeonCodec(readerWriter: SourcepointUnifiedCmpPigeonCodecReaderWriter())
}

/// Generated protocol from Pigeon that represents a handler of messages from Flutter.
protocol SourcepointUnifiedCmpHostApi {
  func loadMessage(accountId: Int64, propertyId: Int64, propertyName: String, pmId: String,
                   messageLanguage: HostAPIMessageLanguage, campaignsEnv: HostAPICampaignsEnv,
                   messageTimeout: Int64, runGDPRCampaign: Bool, runCCPACampaign: Bool,
                   completion: @escaping (Result<HostAPISPConsent, Error>) -> Void)
  func loadPrivacyManager(pmId: String, pmTab: HostAPIPMTab, campaignType: HostAPICampaignType,
                          messageType: HostAPIMessageType,
                          completion: @escaping (Result<Void, Error>) -> Void)
}

/// Generated setup class from Pigeon to handle messages through the `binaryMessenger`.
class SourcepointUnifiedCmpHostApiSetup {
  static var codec: FlutterStandardMessageCodec { SourcepointUnifiedCmpPigeonCodec.shared }
  /// Sets up an instance of `SourcepointUnifiedCmpHostApi` to handle messages through the
  /// `binaryMessenger`.
  static func setUp(binaryMessenger: FlutterBinaryMessenger, api: SourcepointUnifiedCmpHostApi?,
                    messageChannelSuffix: String = "") {
    let channelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
    let loadMessageChannel = FlutterBasicMessageChannel(
      name: "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpHostApi.loadMessage\(channelSuffix)",
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    if let api {
      loadMessageChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let accountIdArg = args[0] is Int64 ? args[0] as! Int64 : Int64(args[0] as! Int32)
        let propertyIdArg = args[1] is Int64 ? args[1] as! Int64 : Int64(args[1] as! Int32)
        let propertyNameArg = args[2] as! String
        let pmIdArg = args[3] as! String
        let messageLanguageArg = args[4] as! HostAPIMessageLanguage
        let campaignsEnvArg = args[5] as! HostAPICampaignsEnv
        let messageTimeoutArg = args[6] is Int64 ? args[6] as! Int64 : Int64(args[6] as! Int32)
        let runGDPRCampaignArg = args[7] as! Bool
        let runCCPACampaignArg = args[8] as! Bool
        api.loadMessage(
          accountId: accountIdArg,
          propertyId: propertyIdArg,
          propertyName: propertyNameArg,
          pmId: pmIdArg,
          messageLanguage: messageLanguageArg,
          campaignsEnv: campaignsEnvArg,
          messageTimeout: messageTimeoutArg,
          runGDPRCampaign: runGDPRCampaignArg,
          runCCPACampaign: runCCPACampaignArg
        ) { result in
          switch result {
          case let .success(res):
            reply(wrapResult(res))
          case let .failure(error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      loadMessageChannel.setMessageHandler(nil)
    }
    let loadPrivacyManagerChannel = FlutterBasicMessageChannel(
      name: "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpHostApi.loadPrivacyManager\(channelSuffix)",
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    if let api {
      loadPrivacyManagerChannel.setMessageHandler { message, reply in
        let args = message as! [Any?]
        let pmIdArg = args[0] as! String
        let pmTabArg = args[1] as! HostAPIPMTab
        let campaignTypeArg = args[2] as! HostAPICampaignType
        let messageTypeArg = args[3] as! HostAPIMessageType
        api.loadPrivacyManager(
          pmId: pmIdArg,
          pmTab: pmTabArg,
          campaignType: campaignTypeArg,
          messageType: messageTypeArg
        ) { result in
          switch result {
          case .success:
            reply(wrapResult(nil))
          case let .failure(error):
            reply(wrapError(error))
          }
        }
      }
    } else {
      loadPrivacyManagerChannel.setMessageHandler(nil)
    }
  }
}

/// Generated protocol from Pigeon that represents Flutter messages that can be called from Swift.
protocol SourcepointUnifiedCmpFlutterApiProtocol {
  func onUIFinished(viewId viewIdArg: String,
                    completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onUIReady(viewId viewIdArg: String,
                 completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onError(error errorArg: HostAPISPError,
               completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onConsentReady(consent consentArg: HostAPISPConsent,
                      completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onAction(viewId viewIdArg: String, consentAction consentActionArg: HostAPIConsentAction,
                completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onNoIntentActivitiesFound(url urlArg: String,
                                 completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
  func onSpFinished(consent consentArg: HostAPISPConsent,
                    completion: @escaping (Result<Void, HostApiFlutterError>) -> Void)
}

class SourcepointUnifiedCmpFlutterApi: SourcepointUnifiedCmpFlutterApiProtocol {
  private let binaryMessenger: FlutterBinaryMessenger
  private let messageChannelSuffix: String
  init(binaryMessenger: FlutterBinaryMessenger, messageChannelSuffix: String = "") {
    self.binaryMessenger = binaryMessenger
    self.messageChannelSuffix = messageChannelSuffix.count > 0 ? ".\(messageChannelSuffix)" : ""
  }

  var codec: SourcepointUnifiedCmpPigeonCodec {
    SourcepointUnifiedCmpPigeonCodec.shared
  }

  func onUIFinished(viewId viewIdArg: String,
                    completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onUIFinished\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([viewIdArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onUIReady(viewId viewIdArg: String,
                 completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onUIReady\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([viewIdArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onError(error errorArg: HostAPISPError,
               completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onError\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([errorArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onConsentReady(consent consentArg: HostAPISPConsent,
                      completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onConsentReady\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([consentArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onAction(viewId viewIdArg: String, consentAction consentActionArg: HostAPIConsentAction,
                completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onAction\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([viewIdArg, consentActionArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onNoIntentActivitiesFound(url urlArg: String,
                                 completion: @escaping (Result<Void, HostApiFlutterError>)
                                   -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([urlArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }

  func onSpFinished(consent consentArg: HostAPISPConsent,
                    completion: @escaping (Result<Void, HostApiFlutterError>) -> Void) {
    let channelName =
      "dev.flutter.pigeon.sourcepoint_unified_cmp_ios.SourcepointUnifiedCmpFlutterApi.onSpFinished\(messageChannelSuffix)"
    let channel = FlutterBasicMessageChannel(
      name: channelName,
      binaryMessenger: binaryMessenger,
      codec: codec
    )
    channel.sendMessage([consentArg] as [Any?]) { response in
      guard let listResponse = response as? [Any?] else {
        completion(.failure(createConnectionError(withChannelName: channelName)))
        return
      }
      if listResponse.count > 1 {
        let code: String = listResponse[0] as! String
        let message: String? = nilOrValue(listResponse[1])
        let details: String? = nilOrValue(listResponse[2])
        completion(.failure(HostApiFlutterError(code: code, message: message, details: details)))
      } else {
        completion(.success(()))
      }
    }
  }
}

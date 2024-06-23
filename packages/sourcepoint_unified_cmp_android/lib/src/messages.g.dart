// Autogenerated from Pigeon (v20.0.1), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import, unnecessary_parenthesis, prefer_null_aware_operators, omit_local_variable_types, unused_shown_name, unnecessary_import, no_leading_underscores_for_local_identifiers

import 'dart:async';
import 'dart:typed_data' show Float64List, Int32List, Int64List, Uint8List;

import 'package:flutter/foundation.dart' show ReadBuffer, WriteBuffer;
import 'package:flutter/services.dart';

PlatformException _createConnectionError(String channelName) {
  return PlatformException(
    code: 'channel-error',
    message: 'Unable to establish connection on channel: "$channelName".',
  );
}

List<Object?> wrapResponse(
    {Object? result, PlatformException? error, bool empty = false}) {
  if (empty) {
    return <Object?>[];
  }
  if (error == null) {
    return <Object?>[result];
  }
  return <Object?>[error.code, error.message, error.details];
}

enum HostAPIPMTab {
  defaults,
  purposes,
  vendors,
  features,
}

enum HostAPICampaignType {
  gdpr,
  ccpa,
  usnat,
}

enum HostAPIMessageType {
  mobile,
  ott,
  legacyOtt,
}

enum HostAPIGranularState {
  all,
  some,
  none,
  emptyVl,
}

enum HostAPIActionType {
  showOptions,
  rejectAll,
  acceptAll,
  msgCancel,
  custom,
  saveAndExit,
  pmDismiss,
  getMsgError,
  getMessageNotCalled,
  unknown,
}

enum HostAPIMessageLanguage {
  english,
  french,
  german,
  italian,
  spanish,
}

enum HostAPICampaignsEnv {
  stage,
  public,
}

class HostAPIConsentAction {
  HostAPIConsentAction({
    required this.actionType,
    required this.pubData,
    required this.campaignType,
    this.customActionId,
  });

  HostAPIActionType actionType;

  String pubData;

  HostAPICampaignType campaignType;

  String? customActionId;

  Object encode() {
    return <Object?>[
      actionType,
      pubData,
      campaignType,
      customActionId,
    ];
  }

  static HostAPIConsentAction decode(Object result) {
    result as List<Object?>;
    return HostAPIConsentAction(
      actionType: result[0]! as HostAPIActionType,
      pubData: result[1]! as String,
      campaignType: result[2]! as HostAPICampaignType,
      customActionId: result[3] as String?,
    );
  }
}

class HostAPIGDPRPurposeGrants {
  HostAPIGDPRPurposeGrants({
    required this.granted,
    this.purposeGrants,
  });

  bool granted;

  Map<String?, bool?>? purposeGrants;

  Object encode() {
    return <Object?>[
      granted,
      purposeGrants,
    ];
  }

  static HostAPIGDPRPurposeGrants decode(Object result) {
    result as List<Object?>;
    return HostAPIGDPRPurposeGrants(
      granted: result[0]! as bool,
      purposeGrants:
          (result[1] as Map<Object?, Object?>?)?.cast<String?, bool?>(),
    );
  }
}

class HostAPISPError {
  HostAPISPError({
    required this.cause,
    required this.message,
  });

  String cause;

  String message;

  Object encode() {
    return <Object?>[
      cause,
      message,
    ];
  }

  static HostAPISPError decode(Object result) {
    result as List<Object?>;
    return HostAPISPError(
      cause: result[0]! as String,
      message: result[1]! as String,
    );
  }
}

class HostAPIGranularStatus {
  HostAPIGranularStatus({
    this.defaultConsent,
    this.previousOptInAll,
    this.purposeConsent,
    this.purposeLegInt,
    this.vendorConsent,
    this.vendorLegInt,
  });

  bool? defaultConsent;

  bool? previousOptInAll;

  HostAPIGranularState? purposeConsent;

  HostAPIGranularState? purposeLegInt;

  HostAPIGranularState? vendorConsent;

  HostAPIGranularState? vendorLegInt;

  Object encode() {
    return <Object?>[
      defaultConsent,
      previousOptInAll,
      purposeConsent,
      purposeLegInt,
      vendorConsent,
      vendorLegInt,
    ];
  }

  static HostAPIGranularStatus decode(Object result) {
    result as List<Object?>;
    return HostAPIGranularStatus(
      defaultConsent: result[0] as bool?,
      previousOptInAll: result[1] as bool?,
      purposeConsent: result[2] as HostAPIGranularState?,
      purposeLegInt: result[3] as HostAPIGranularState?,
      vendorConsent: result[4] as HostAPIGranularState?,
      vendorLegInt: result[5] as HostAPIGranularState?,
    );
  }
}

class HostAPIConsentStatus {
  HostAPIConsentStatus({
    this.consentedAll,
    this.consentedToAny,
    this.granularStatus,
    this.hasConsentData,
    this.rejectedAny,
    this.rejectedLI,
    this.legalBasisChanges,
    this.vendorListAdditions,
  });

  bool? consentedAll;

  bool? consentedToAny;

  HostAPIGranularStatus? granularStatus;

  bool? hasConsentData;

  bool? rejectedAny;

  bool? rejectedLI;

  bool? legalBasisChanges;

  bool? vendorListAdditions;

  Object encode() {
    return <Object?>[
      consentedAll,
      consentedToAny,
      granularStatus,
      hasConsentData,
      rejectedAny,
      rejectedLI,
      legalBasisChanges,
      vendorListAdditions,
    ];
  }

  static HostAPIConsentStatus decode(Object result) {
    result as List<Object?>;
    return HostAPIConsentStatus(
      consentedAll: result[0] as bool?,
      consentedToAny: result[1] as bool?,
      granularStatus: result[2] as HostAPIGranularStatus?,
      hasConsentData: result[3] as bool?,
      rejectedAny: result[4] as bool?,
      rejectedLI: result[5] as bool?,
      legalBasisChanges: result[6] as bool?,
      vendorListAdditions: result[7] as bool?,
    );
  }
}

class HostAPIGDPRConsent {
  HostAPIGDPRConsent({
    this.uuid,
    this.tcData,
    this.grants,
    required this.euconsent,
    this.acceptedCategories,
    required this.apply,
    this.consentStatus,
  });

  String? uuid;

  Map<String?, String?>? tcData;

  Map<String?, HostAPIGDPRPurposeGrants?>? grants;

  String euconsent;

  List<String?>? acceptedCategories;

  bool apply;

  HostAPIConsentStatus? consentStatus;

  Object encode() {
    return <Object?>[
      uuid,
      tcData,
      grants,
      euconsent,
      acceptedCategories,
      apply,
      consentStatus,
    ];
  }

  static HostAPIGDPRConsent decode(Object result) {
    result as List<Object?>;
    return HostAPIGDPRConsent(
      uuid: result[0] as String?,
      tcData: (result[1] as Map<Object?, Object?>?)?.cast<String?, String?>(),
      grants: (result[2] as Map<Object?, Object?>?)
          ?.cast<String?, HostAPIGDPRPurposeGrants?>(),
      euconsent: result[3]! as String,
      acceptedCategories: (result[4] as List<Object?>?)?.cast<String?>(),
      apply: result[5]! as bool,
      consentStatus: result[6] as HostAPIConsentStatus?,
    );
  }
}

class HostAPICCPAConsent {
  HostAPICCPAConsent({
    this.uuid,
    this.rejectedCategories,
    this.rejectedVendors,
    this.status,
    required this.uspstring,
    required this.apply,
  });

  String? uuid;

  List<String?>? rejectedCategories;

  List<String?>? rejectedVendors;

  String? status;

  String uspstring;

  bool apply;

  Object encode() {
    return <Object?>[
      uuid,
      rejectedCategories,
      rejectedVendors,
      status,
      uspstring,
      apply,
    ];
  }

  static HostAPICCPAConsent decode(Object result) {
    result as List<Object?>;
    return HostAPICCPAConsent(
      uuid: result[0] as String?,
      rejectedCategories: (result[1] as List<Object?>?)?.cast<String?>(),
      rejectedVendors: (result[2] as List<Object?>?)?.cast<String?>(),
      status: result[3] as String?,
      uspstring: result[4]! as String,
      apply: result[5]! as bool,
    );
  }
}

class HostAPISPConsent {
  HostAPISPConsent({
    this.gdpr,
    this.ccpa,
  });

  HostAPIGDPRConsent? gdpr;

  HostAPICCPAConsent? ccpa;

  Object encode() {
    return <Object?>[
      gdpr,
      ccpa,
    ];
  }

  static HostAPISPConsent decode(Object result) {
    result as List<Object?>;
    return HostAPISPConsent(
      gdpr: result[0] as HostAPIGDPRConsent?,
      ccpa: result[1] as HostAPICCPAConsent?,
    );
  }
}

class _PigeonCodec extends StandardMessageCodec {
  const _PigeonCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is HostAPIConsentAction) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is HostAPIGDPRPurposeGrants) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is HostAPISPError) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is HostAPIGranularStatus) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is HostAPIConsentStatus) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is HostAPIGDPRConsent) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else if (value is HostAPICCPAConsent) {
      buffer.putUint8(135);
      writeValue(buffer, value.encode());
    } else if (value is HostAPISPConsent) {
      buffer.putUint8(136);
      writeValue(buffer, value.encode());
    } else if (value is HostAPIPMTab) {
      buffer.putUint8(137);
      writeValue(buffer, value.index);
    } else if (value is HostAPICampaignType) {
      buffer.putUint8(138);
      writeValue(buffer, value.index);
    } else if (value is HostAPIMessageType) {
      buffer.putUint8(139);
      writeValue(buffer, value.index);
    } else if (value is HostAPIGranularState) {
      buffer.putUint8(140);
      writeValue(buffer, value.index);
    } else if (value is HostAPIActionType) {
      buffer.putUint8(141);
      writeValue(buffer, value.index);
    } else if (value is HostAPIMessageLanguage) {
      buffer.putUint8(142);
      writeValue(buffer, value.index);
    } else if (value is HostAPICampaignsEnv) {
      buffer.putUint8(143);
      writeValue(buffer, value.index);
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 129:
        return HostAPIConsentAction.decode(readValue(buffer)!);
      case 130:
        return HostAPIGDPRPurposeGrants.decode(readValue(buffer)!);
      case 131:
        return HostAPISPError.decode(readValue(buffer)!);
      case 132:
        return HostAPIGranularStatus.decode(readValue(buffer)!);
      case 133:
        return HostAPIConsentStatus.decode(readValue(buffer)!);
      case 134:
        return HostAPIGDPRConsent.decode(readValue(buffer)!);
      case 135:
        return HostAPICCPAConsent.decode(readValue(buffer)!);
      case 136:
        return HostAPISPConsent.decode(readValue(buffer)!);
      case 137:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPIPMTab.values[value];
      case 138:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPICampaignType.values[value];
      case 139:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPIMessageType.values[value];
      case 140:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPIGranularState.values[value];
      case 141:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPIActionType.values[value];
      case 142:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPIMessageLanguage.values[value];
      case 143:
        final int? value = readValue(buffer) as int?;
        return value == null ? null : HostAPICampaignsEnv.values[value];
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

class SourcepointUnifiedCmpHostApi {
  /// Constructor for [SourcepointUnifiedCmpHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  SourcepointUnifiedCmpHostApi(
      {BinaryMessenger? binaryMessenger, String messageChannelSuffix = ''})
      : __pigeon_binaryMessenger = binaryMessenger,
        __pigeon_messageChannelSuffix =
            messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec = _PigeonCodec();

  final String __pigeon_messageChannelSuffix;

  Future<HostAPISPConsent> loadMessage({
    required int accountId,
    required int propertyId,
    required String propertyName,
    required String pmId,
    required HostAPIMessageLanguage messageLanguage,
    required HostAPICampaignsEnv campaignsEnv,
    required int messageTimeout,
    required bool runGDPRCampaign,
    required bool runCCPACampaign,
    required bool runUSNATCampaign,
  }) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpHostApi.loadMessage$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList =
        await __pigeon_channel.send(<Object?>[
      accountId,
      propertyId,
      propertyName,
      pmId,
      messageLanguage,
      campaignsEnv,
      messageTimeout,
      runGDPRCampaign,
      runCCPACampaign,
      runUSNATCampaign
    ]) as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else if (__pigeon_replyList[0] == null) {
      throw PlatformException(
        code: 'null-error',
        message: 'Host platform returned null value for non-null return value.',
      );
    } else {
      return (__pigeon_replyList[0] as HostAPISPConsent?)!;
    }
  }

  Future<void> loadPrivacyManager({
    required String pmId,
    required HostAPIPMTab pmTab,
    required HostAPICampaignType campaignType,
    required HostAPIMessageType messageType,
  }) async {
    final String __pigeon_channelName =
        'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpHostApi.loadPrivacyManager$__pigeon_messageChannelSuffix';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
            .send(<Object?>[pmId, pmTab, campaignType, messageType])
        as List<Object?>?;
    if (__pigeon_replyList == null) {
      throw _createConnectionError(__pigeon_channelName);
    } else if (__pigeon_replyList.length > 1) {
      throw PlatformException(
        code: __pigeon_replyList[0]! as String,
        message: __pigeon_replyList[1] as String?,
        details: __pigeon_replyList[2],
      );
    } else {
      return;
    }
  }
}

abstract class SourcepointUnifiedCmpFlutterApi {
  static const MessageCodec<Object?> pigeonChannelCodec = _PigeonCodec();

  void onUIFinished(int viewId);

  void onUIReady(int viewId);

  void onError(HostAPISPError error);

  void onConsentReady(HostAPISPConsent consent);

  void onAction(int viewId, HostAPIConsentAction consentAction);

  void onNoIntentActivitiesFound(String url);

  void onSpFinished(HostAPISPConsent consent);

  static void setUp(
    SourcepointUnifiedCmpFlutterApi? api, {
    BinaryMessenger? binaryMessenger,
    String messageChannelSuffix = '',
  }) {
    messageChannelSuffix =
        messageChannelSuffix.isNotEmpty ? '.$messageChannelSuffix' : '';
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIFinished$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIFinished was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_viewId = (args[0] as int?);
          assert(arg_viewId != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIFinished was null, expected non-null int.');
          try {
            api.onUIFinished(arg_viewId!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIReady$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIReady was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_viewId = (args[0] as int?);
          assert(arg_viewId != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIReady was null, expected non-null int.');
          try {
            api.onUIReady(arg_viewId!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HostAPISPError? arg_error = (args[0] as HostAPISPError?);
          assert(arg_error != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError was null, expected non-null HostAPISPError.');
          try {
            api.onError(arg_error!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HostAPISPConsent? arg_consent = (args[0] as HostAPISPConsent?);
          assert(arg_consent != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady was null, expected non-null HostAPISPConsent.');
          try {
            api.onConsentReady(arg_consent!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final int? arg_viewId = (args[0] as int?);
          assert(arg_viewId != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction was null, expected non-null int.');
          final HostAPIConsentAction? arg_consentAction =
              (args[1] as HostAPIConsentAction?);
          assert(arg_consentAction != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction was null, expected non-null HostAPIConsentAction.');
          try {
            api.onAction(arg_viewId!, arg_consentAction!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final String? arg_url = (args[0] as String?);
          assert(arg_url != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound was null, expected non-null String.');
          try {
            api.onNoIntentActivitiesFound(arg_url!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished$messageChannelSuffix',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final HostAPISPConsent? arg_consent = (args[0] as HostAPISPConsent?);
          assert(arg_consent != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished was null, expected non-null HostAPISPConsent.');
          try {
            api.onSpFinished(arg_consent!);
            return wrapResponse(empty: true);
          } on PlatformException catch (e) {
            return wrapResponse(error: e);
          } catch (e) {
            return wrapResponse(
                error: PlatformException(code: 'error', message: e.toString()));
          }
        });
      }
    }
  }
}

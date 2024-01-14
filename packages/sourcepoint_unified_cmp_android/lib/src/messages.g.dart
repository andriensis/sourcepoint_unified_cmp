// Autogenerated from Pigeon (v16.0.0), do not edit directly.
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

enum PMTab {
  purposes,
}

enum CampaignType {
  gdpr,
  ccpa,
}

enum MessageType {
  mobile,
  ott,
  lagazyOtt,
}

enum GranularState {
  all,
  some,
  none,
}

enum ActionType {
  showOptions,
  rejectAll,
  acceptAll,
  msgCancel,
  custom,
  saveAndExit,
  pmDismiss,
}

enum SourcepointUnifiedCmpError {
  invalidArgumentException,
  missingPropertyException,
  invalidConsentResponse,
  noInternetConnectionException,
  executionInTheWrongThreadException,
  requestFailedException,
  invalidRequestException,
}

class ConsentAction {
  ConsentAction({
    required this.actionType,
    required this.pubData,
    required this.campaignType,
    this.customActionId,
  });

  ActionType actionType;

  Object pubData;

  CampaignType campaignType;

  String? customActionId;

  Object encode() {
    return <Object?>[
      actionType.index,
      pubData,
      campaignType.index,
      customActionId,
    ];
  }

  static ConsentAction decode(Object result) {
    result as List<Object?>;
    return ConsentAction(
      actionType: ActionType.values[result[0]! as int],
      pubData: result[1]!,
      campaignType: CampaignType.values[result[2]! as int],
      customActionId: result[3] as String?,
    );
  }
}

class GDPRPurposeGrants {
  GDPRPurposeGrants({
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

  static GDPRPurposeGrants decode(Object result) {
    result as List<Object?>;
    return GDPRPurposeGrants(
      granted: result[0]! as bool,
      purposeGrants:
          (result[1] as Map<Object?, Object?>?)?.cast<String?, bool?>(),
    );
  }
}

class GranularStatus {
  GranularStatus({
    this.defaultConsent,
    this.previousOptInAll,
    this.purposeConsent,
    this.purposeLegInt,
    this.vendorConsent,
    this.vendorLegInt,
  });

  bool? defaultConsent;

  bool? previousOptInAll;

  GranularState? purposeConsent;

  GranularState? purposeLegInt;

  GranularState? vendorConsent;

  GranularState? vendorLegInt;

  Object encode() {
    return <Object?>[
      defaultConsent,
      previousOptInAll,
      purposeConsent?.index,
      purposeLegInt?.index,
      vendorConsent?.index,
      vendorLegInt?.index,
    ];
  }

  static GranularStatus decode(Object result) {
    result as List<Object?>;
    return GranularStatus(
      defaultConsent: result[0] as bool?,
      previousOptInAll: result[1] as bool?,
      purposeConsent:
          result[2] != null ? GranularState.values[result[2]! as int] : null,
      purposeLegInt:
          result[3] != null ? GranularState.values[result[3]! as int] : null,
      vendorConsent:
          result[4] != null ? GranularState.values[result[4]! as int] : null,
      vendorLegInt:
          result[5] != null ? GranularState.values[result[5]! as int] : null,
    );
  }
}

class ConsentStatus {
  ConsentStatus({
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

  GranularStatus? granularStatus;

  bool? hasConsentData;

  bool? rejectedAny;

  bool? rejectedLI;

  bool? legalBasisChanges;

  bool? vendorListAdditions;

  Object encode() {
    return <Object?>[
      consentedAll,
      consentedToAny,
      granularStatus?.encode(),
      hasConsentData,
      rejectedAny,
      rejectedLI,
      legalBasisChanges,
      vendorListAdditions,
    ];
  }

  static ConsentStatus decode(Object result) {
    result as List<Object?>;
    return ConsentStatus(
      consentedAll: result[0] as bool?,
      consentedToAny: result[1] as bool?,
      granularStatus: result[2] != null
          ? GranularStatus.decode(result[2]! as List<Object?>)
          : null,
      hasConsentData: result[3] as bool?,
      rejectedAny: result[4] as bool?,
      rejectedLI: result[5] as bool?,
      legalBasisChanges: result[6] as bool?,
      vendorListAdditions: result[7] as bool?,
    );
  }
}

class GDPRConsent {
  GDPRConsent({
    this.uuid,
    this.tcData,
    this.grants,
    required this.euconsent,
    this.acceptedCategories,
    required this.apply,
    required this.consentStatus,
  });

  String? uuid;

  Map<String?, String?>? tcData;

  Map<String?, GDPRPurposeGrants?>? grants;

  String euconsent;

  List<String?>? acceptedCategories;

  bool apply;

  ConsentStatus consentStatus;

  Object encode() {
    return <Object?>[
      uuid,
      tcData,
      grants,
      euconsent,
      acceptedCategories,
      apply,
      consentStatus.encode(),
    ];
  }

  static GDPRConsent decode(Object result) {
    result as List<Object?>;
    return GDPRConsent(
      uuid: result[0] as String?,
      tcData: (result[1] as Map<Object?, Object?>?)?.cast<String?, String?>(),
      grants: (result[2] as Map<Object?, Object?>?)
          ?.cast<String?, GDPRPurposeGrants?>(),
      euconsent: result[3]! as String,
      acceptedCategories: (result[4] as List<Object?>?)?.cast<String?>(),
      apply: result[5]! as bool,
      consentStatus: ConsentStatus.decode(result[6]! as List<Object?>),
    );
  }
}

class CCPAConsent {
  CCPAConsent({
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

  static CCPAConsent decode(Object result) {
    result as List<Object?>;
    return CCPAConsent(
      uuid: result[0] as String?,
      rejectedCategories: (result[1] as List<Object?>?)?.cast<String?>(),
      rejectedVendors: (result[2] as List<Object?>?)?.cast<String?>(),
      status: result[3] as String?,
      uspstring: result[4]! as String,
      apply: result[5]! as bool,
    );
  }
}

class SPConsent {
  SPConsent({
    this.gdpr,
    this.ccpa,
  });

  GDPRConsent? gdpr;

  CCPAConsent? ccpa;

  Object encode() {
    return <Object?>[
      gdpr?.encode(),
      ccpa?.encode(),
    ];
  }

  static SPConsent decode(Object result) {
    result as List<Object?>;
    return SPConsent(
      gdpr: result[0] != null
          ? GDPRConsent.decode(result[0]! as List<Object?>)
          : null,
      ccpa: result[1] != null
          ? CCPAConsent.decode(result[1]! as List<Object?>)
          : null,
    );
  }
}

class SourcepointUnifiedCmpHostApi {
  /// Constructor for [SourcepointUnifiedCmpHostApi].  The [binaryMessenger] named argument is
  /// available for dependency injection.  If it is left null, the default
  /// BinaryMessenger will be used which routes to the host platform.
  SourcepointUnifiedCmpHostApi({BinaryMessenger? binaryMessenger})
      : __pigeon_binaryMessenger = binaryMessenger;
  final BinaryMessenger? __pigeon_binaryMessenger;

  static const MessageCodec<Object?> pigeonChannelCodec =
      StandardMessageCodec();

  Future<void> loadMessage({
    required int accountId,
    required int propertyId,
    required String propertyName,
    required String pmId,
  }) async {
    const String __pigeon_channelName =
        'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpHostApi.loadMessage';
    final BasicMessageChannel<Object?> __pigeon_channel =
        BasicMessageChannel<Object?>(
      __pigeon_channelName,
      pigeonChannelCodec,
      binaryMessenger: __pigeon_binaryMessenger,
    );
    final List<Object?>? __pigeon_replyList = await __pigeon_channel
            .send(<Object?>[accountId, propertyId, propertyName, pmId])
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

class _SourcepointUnifiedCmpFlutterApiCodec extends StandardMessageCodec {
  const _SourcepointUnifiedCmpFlutterApiCodec();
  @override
  void writeValue(WriteBuffer buffer, Object? value) {
    if (value is CCPAConsent) {
      buffer.putUint8(128);
      writeValue(buffer, value.encode());
    } else if (value is ConsentAction) {
      buffer.putUint8(129);
      writeValue(buffer, value.encode());
    } else if (value is ConsentStatus) {
      buffer.putUint8(130);
      writeValue(buffer, value.encode());
    } else if (value is GDPRConsent) {
      buffer.putUint8(131);
      writeValue(buffer, value.encode());
    } else if (value is GDPRPurposeGrants) {
      buffer.putUint8(132);
      writeValue(buffer, value.encode());
    } else if (value is GranularStatus) {
      buffer.putUint8(133);
      writeValue(buffer, value.encode());
    } else if (value is SPConsent) {
      buffer.putUint8(134);
      writeValue(buffer, value.encode());
    } else {
      super.writeValue(buffer, value);
    }
  }

  @override
  Object? readValueOfType(int type, ReadBuffer buffer) {
    switch (type) {
      case 128:
        return CCPAConsent.decode(readValue(buffer)!);
      case 129:
        return ConsentAction.decode(readValue(buffer)!);
      case 130:
        return ConsentStatus.decode(readValue(buffer)!);
      case 131:
        return GDPRConsent.decode(readValue(buffer)!);
      case 132:
        return GDPRPurposeGrants.decode(readValue(buffer)!);
      case 133:
        return GranularStatus.decode(readValue(buffer)!);
      case 134:
        return SPConsent.decode(readValue(buffer)!);
      default:
        return super.readValueOfType(type, buffer);
    }
  }
}

abstract class SourcepointUnifiedCmpFlutterApi {
  static const MessageCodec<Object?> pigeonChannelCodec =
      _SourcepointUnifiedCmpFlutterApiCodec();

  void onUIFinished(int viewId);

  void onUIReady(int viewId);

  void onError(SourcepointUnifiedCmpError error);

  void onConsentReady(SPConsent consent);

  void onAction(int viewId, ConsentAction consentAction);

  void onNoIntentActivitiesFound(String url);

  void onSpFinished(SPConsent consent);

  static void setup(SourcepointUnifiedCmpFlutterApi? api,
      {BinaryMessenger? binaryMessenger}) {
    {
      final BasicMessageChannel<Object?> __pigeon_channel = BasicMessageChannel<
              Object?>(
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIFinished',
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIReady',
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final SourcepointUnifiedCmpError? arg_error = args[0] == null
              ? null
              : SourcepointUnifiedCmpError.values[args[0]! as int];
          assert(arg_error != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError was null, expected non-null SourcepointUnifiedCmpError.');
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final SPConsent? arg_consent = (args[0] as SPConsent?);
          assert(arg_consent != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady was null, expected non-null SPConsent.');
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction',
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
          final ConsentAction? arg_consentAction = (args[1] as ConsentAction?);
          assert(arg_consentAction != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction was null, expected non-null ConsentAction.');
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound',
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
          'dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished',
          pigeonChannelCodec,
          binaryMessenger: binaryMessenger);
      if (api == null) {
        __pigeon_channel.setMessageHandler(null);
      } else {
        __pigeon_channel.setMessageHandler((Object? message) async {
          assert(message != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished was null.');
          final List<Object?> args = (message as List<Object?>?)!;
          final SPConsent? arg_consent = (args[0] as SPConsent?);
          assert(arg_consent != null,
              'Argument for dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished was null, expected non-null SPConsent.');
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

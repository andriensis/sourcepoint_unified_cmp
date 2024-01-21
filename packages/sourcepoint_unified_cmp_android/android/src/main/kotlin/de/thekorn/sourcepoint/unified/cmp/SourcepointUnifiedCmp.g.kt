// Autogenerated from Pigeon (v16.0.0), do not edit directly.
// See also: https://pub.dev/packages/pigeon


import android.util.Log
import io.flutter.plugin.common.BasicMessageChannel
import io.flutter.plugin.common.BinaryMessenger
import io.flutter.plugin.common.MessageCodec
import io.flutter.plugin.common.StandardMessageCodec
import java.io.ByteArrayOutputStream
import java.nio.ByteBuffer

private fun wrapResult(result: Any?): List<Any?> {
  return listOf(result)
}

private fun wrapError(exception: Throwable): List<Any?> {
  if (exception is FlutterError) {
    return listOf(
      exception.code,
      exception.message,
      exception.details
    )
  } else {
    return listOf(
      exception.javaClass.simpleName,
      exception.toString(),
      "Cause: " + exception.cause + ", Stacktrace: " + Log.getStackTraceString(exception)
    )
  }
}

private fun createConnectionError(channelName: String): FlutterError {
  return FlutterError("channel-error",  "Unable to establish connection on channel: '$channelName'.", "")}

/**
 * Error class for passing custom error details to Flutter via a thrown PlatformException.
 * @property code The error code.
 * @property message The error message.
 * @property details The error details. Must be a datatype supported by the api codec.
 */
class FlutterError (
  val code: String,
  override val message: String? = null,
  val details: Any? = null
) : Throwable()

enum class HostAPIPMTab(val raw: Int) {
  PURPOSES(0);

  companion object {
    fun ofRaw(raw: Int): HostAPIPMTab? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPICampaignType(val raw: Int) {
  GDPR(0),
  CCPA(1);

  companion object {
    fun ofRaw(raw: Int): HostAPICampaignType? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPIMessageType(val raw: Int) {
  MOBILE(0),
  OTT(1),
  LAGACYOTT(2);

  companion object {
    fun ofRaw(raw: Int): HostAPIMessageType? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPIGranularState(val raw: Int) {
  ALL(0),
  SOME(1),
  NONE(2);

  companion object {
    fun ofRaw(raw: Int): HostAPIGranularState? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPIActionType(val raw: Int) {
  SHOWOPTIONS(0),
  REJECTALL(1),
  ACCEPTALL(2),
  MSGCANCEL(3),
  CUSTOM(4),
  SAVEANDEXIT(5),
  PMDISMISS(6),
  GETMSGERROR(7),
  GETMESSAGENOTCALLED(8),
  UNKNOWN(9);

  companion object {
    fun ofRaw(raw: Int): HostAPIActionType? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPISourcepointUnifiedCmpError(val raw: Int) {
  INVALIDARGUMENTEXCEPTION(0),
  MISSINGPROPERTYEXCEPTION(1),
  INVALIDCONSENTRESPONSE(2),
  NOINTERNETCONNECTIONEXCEPTION(3),
  EXECUTIONINTHEWRONGTHREADEXCEPTION(4),
  REQUESTFAILEDEXCEPTION(5),
  INVALIDREQUESTEXCEPTION(6);

  companion object {
    fun ofRaw(raw: Int): HostAPISourcepointUnifiedCmpError? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPIMessageLanguage(val raw: Int) {
  ENGLISH(0),
  FRENCH(1),
  GERMAN(2),
  ITALIAN(3),
  SPANISH(4);

  companion object {
    fun ofRaw(raw: Int): HostAPIMessageLanguage? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

enum class HostAPICampaignsEnv(val raw: Int) {
  STAGE(0),
  PUBLIC(1);

  companion object {
    fun ofRaw(raw: Int): HostAPICampaignsEnv? {
      return values().firstOrNull { it.raw == raw }
    }
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPIConsentAction (
  val actionType: HostAPIActionType,
  val pubData: String,
  val campaignType: HostAPICampaignType,
  val customActionId: String? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPIConsentAction {
      val actionType = HostAPIActionType.ofRaw(list[0] as Int)!!
      val pubData = list[1] as String
      val campaignType = HostAPICampaignType.ofRaw(list[2] as Int)!!
      val customActionId = list[3] as String?
      return HostAPIConsentAction(actionType, pubData, campaignType, customActionId)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      actionType.raw,
      pubData,
      campaignType.raw,
      customActionId,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPIGDPRPurposeGrants (
  val granted: Boolean,
  val purposeGrants: Map<String?, Boolean?>? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPIGDPRPurposeGrants {
      val granted = list[0] as Boolean
      val purposeGrants = list[1] as Map<String?, Boolean?>?
      return HostAPIGDPRPurposeGrants(granted, purposeGrants)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      granted,
      purposeGrants,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPIGranularStatus (
  val defaultConsent: Boolean? = null,
  val previousOptInAll: Boolean? = null,
  val purposeConsent: HostAPIGranularState? = null,
  val purposeLegInt: HostAPIGranularState? = null,
  val vendorConsent: HostAPIGranularState? = null,
  val vendorLegInt: HostAPIGranularState? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPIGranularStatus {
      val defaultConsent = list[0] as Boolean?
      val previousOptInAll = list[1] as Boolean?
      val purposeConsent: HostAPIGranularState? = (list[2] as Int?)?.let {
        HostAPIGranularState.ofRaw(it)
      }
      val purposeLegInt: HostAPIGranularState? = (list[3] as Int?)?.let {
        HostAPIGranularState.ofRaw(it)
      }
      val vendorConsent: HostAPIGranularState? = (list[4] as Int?)?.let {
        HostAPIGranularState.ofRaw(it)
      }
      val vendorLegInt: HostAPIGranularState? = (list[5] as Int?)?.let {
        HostAPIGranularState.ofRaw(it)
      }
      return HostAPIGranularStatus(defaultConsent, previousOptInAll, purposeConsent, purposeLegInt, vendorConsent, vendorLegInt)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      defaultConsent,
      previousOptInAll,
      purposeConsent?.raw,
      purposeLegInt?.raw,
      vendorConsent?.raw,
      vendorLegInt?.raw,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPIConsentStatus (
  val consentedAll: Boolean? = null,
  val consentedToAny: Boolean? = null,
  val granularStatus: HostAPIGranularStatus? = null,
  val hasConsentData: Boolean? = null,
  val rejectedAny: Boolean? = null,
  val rejectedLI: Boolean? = null,
  val legalBasisChanges: Boolean? = null,
  val vendorListAdditions: Boolean? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPIConsentStatus {
      val consentedAll = list[0] as Boolean?
      val consentedToAny = list[1] as Boolean?
      val granularStatus: HostAPIGranularStatus? = (list[2] as List<Any?>?)?.let {
        HostAPIGranularStatus.fromList(it)
      }
      val hasConsentData = list[3] as Boolean?
      val rejectedAny = list[4] as Boolean?
      val rejectedLI = list[5] as Boolean?
      val legalBasisChanges = list[6] as Boolean?
      val vendorListAdditions = list[7] as Boolean?
      return HostAPIConsentStatus(consentedAll, consentedToAny, granularStatus, hasConsentData, rejectedAny, rejectedLI, legalBasisChanges, vendorListAdditions)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      consentedAll,
      consentedToAny,
      granularStatus?.toList(),
      hasConsentData,
      rejectedAny,
      rejectedLI,
      legalBasisChanges,
      vendorListAdditions,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPIGDPRConsent (
  val uuid: String? = null,
  val tcData: Map<String?, String?>? = null,
  val grants: Map<String?, HostAPIGDPRPurposeGrants?>? = null,
  val euconsent: String,
  val acceptedCategories: List<String?>? = null,
  val apply: Boolean,
  val consentStatus: HostAPIConsentStatus? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPIGDPRConsent {
      val uuid = list[0] as String?
      val tcData = list[1] as Map<String?, String?>?
      val grants = list[2] as Map<String?, HostAPIGDPRPurposeGrants?>?
      val euconsent = list[3] as String
      val acceptedCategories = list[4] as List<String?>?
      val apply = list[5] as Boolean
      val consentStatus: HostAPIConsentStatus? = (list[6] as List<Any?>?)?.let {
        HostAPIConsentStatus.fromList(it)
      }
      return HostAPIGDPRConsent(uuid, tcData, grants, euconsent, acceptedCategories, apply, consentStatus)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      uuid,
      tcData,
      grants,
      euconsent,
      acceptedCategories,
      apply,
      consentStatus?.toList(),
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPICCPAConsent (
  val uuid: String? = null,
  val rejectedCategories: List<String?>? = null,
  val rejectedVendors: List<String?>? = null,
  val status: String? = null,
  val uspstring: String,
  val apply: Boolean

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPICCPAConsent {
      val uuid = list[0] as String?
      val rejectedCategories = list[1] as List<String?>?
      val rejectedVendors = list[2] as List<String?>?
      val status = list[3] as String?
      val uspstring = list[4] as String
      val apply = list[5] as Boolean
      return HostAPICCPAConsent(uuid, rejectedCategories, rejectedVendors, status, uspstring, apply)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      uuid,
      rejectedCategories,
      rejectedVendors,
      status,
      uspstring,
      apply,
    )
  }
}

/** Generated class from Pigeon that represents data sent in messages. */
data class HostAPISPConsent (
  val gdpr: HostAPIGDPRConsent? = null,
  val ccpa: HostAPICCPAConsent? = null

) {
  companion object {
    @Suppress("UNCHECKED_CAST")
    fun fromList(list: List<Any?>): HostAPISPConsent {
      val gdpr: HostAPIGDPRConsent? = (list[0] as List<Any?>?)?.let {
        HostAPIGDPRConsent.fromList(it)
      }
      val ccpa: HostAPICCPAConsent? = (list[1] as List<Any?>?)?.let {
        HostAPICCPAConsent.fromList(it)
      }
      return HostAPISPConsent(gdpr, ccpa)
    }
  }
  fun toList(): List<Any?> {
    return listOf<Any?>(
      gdpr?.toList(),
      ccpa?.toList(),
    )
  }
}

@Suppress("UNCHECKED_CAST")
private object SourcepointUnifiedCmpHostApiCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPICCPAConsent.fromList(it)
        }
      }
      129.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIConsentStatus.fromList(it)
        }
      }
      130.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGDPRConsent.fromList(it)
        }
      }
      131.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGDPRPurposeGrants.fromList(it)
        }
      }
      132.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGranularStatus.fromList(it)
        }
      }
      133.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPISPConsent.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is HostAPICCPAConsent -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      is HostAPIConsentStatus -> {
        stream.write(129)
        writeValue(stream, value.toList())
      }
      is HostAPIGDPRConsent -> {
        stream.write(130)
        writeValue(stream, value.toList())
      }
      is HostAPIGDPRPurposeGrants -> {
        stream.write(131)
        writeValue(stream, value.toList())
      }
      is HostAPIGranularStatus -> {
        stream.write(132)
        writeValue(stream, value.toList())
      }
      is HostAPISPConsent -> {
        stream.write(133)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated interface from Pigeon that represents a handler of messages from Flutter. */
interface SourcepointUnifiedCmpHostApi {
  fun loadMessage(accountId: Long, propertyId: Long, propertyName: String, pmId: String, messageLanguage: HostAPIMessageLanguage, campaignsEnv: HostAPICampaignsEnv, messageTimeout: Long, runGDPRCampaign: Boolean, runCCPACampaign: Boolean, callback: (Result<HostAPISPConsent>) -> Unit)
  fun loadPrivacyManager(pmId: String, pmTab: HostAPIPMTab, campaignType: HostAPICampaignType, messageType: HostAPIMessageType, callback: (Result<Unit>) -> Unit)

  companion object {
    /** The codec used by SourcepointUnifiedCmpHostApi. */
    val codec: MessageCodec<Any?> by lazy {
      SourcepointUnifiedCmpHostApiCodec
    }
    /** Sets up an instance of `SourcepointUnifiedCmpHostApi` to handle messages through the `binaryMessenger`. */
    @Suppress("UNCHECKED_CAST")
    fun setUp(binaryMessenger: BinaryMessenger, api: SourcepointUnifiedCmpHostApi?) {
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpHostApi.loadMessage", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val accountIdArg = args[0].let { if (it is Int) it.toLong() else it as Long }
            val propertyIdArg = args[1].let { if (it is Int) it.toLong() else it as Long }
            val propertyNameArg = args[2] as String
            val pmIdArg = args[3] as String
            val messageLanguageArg = HostAPIMessageLanguage.ofRaw(args[4] as Int)!!
            val campaignsEnvArg = HostAPICampaignsEnv.ofRaw(args[5] as Int)!!
            val messageTimeoutArg = args[6].let { if (it is Int) it.toLong() else it as Long }
            val runGDPRCampaignArg = args[7] as Boolean
            val runCCPACampaignArg = args[8] as Boolean
            api.loadMessage(accountIdArg, propertyIdArg, propertyNameArg, pmIdArg, messageLanguageArg, campaignsEnvArg, messageTimeoutArg, runGDPRCampaignArg, runCCPACampaignArg) { result: Result<HostAPISPConsent> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                val data = result.getOrNull()
                reply.reply(wrapResult(data))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
      run {
        val channel = BasicMessageChannel<Any?>(binaryMessenger, "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpHostApi.loadPrivacyManager", codec)
        if (api != null) {
          channel.setMessageHandler { message, reply ->
            val args = message as List<Any?>
            val pmIdArg = args[0] as String
            val pmTabArg = HostAPIPMTab.ofRaw(args[1] as Int)!!
            val campaignTypeArg = HostAPICampaignType.ofRaw(args[2] as Int)!!
            val messageTypeArg = HostAPIMessageType.ofRaw(args[3] as Int)!!
            api.loadPrivacyManager(pmIdArg, pmTabArg, campaignTypeArg, messageTypeArg) { result: Result<Unit> ->
              val error = result.exceptionOrNull()
              if (error != null) {
                reply.reply(wrapError(error))
              } else {
                reply.reply(wrapResult(null))
              }
            }
          }
        } else {
          channel.setMessageHandler(null)
        }
      }
    }
  }
}
@Suppress("UNCHECKED_CAST")
private object SourcepointUnifiedCmpFlutterApiCodec : StandardMessageCodec() {
  override fun readValueOfType(type: Byte, buffer: ByteBuffer): Any? {
    return when (type) {
      128.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPICCPAConsent.fromList(it)
        }
      }
      129.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIConsentAction.fromList(it)
        }
      }
      130.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIConsentStatus.fromList(it)
        }
      }
      131.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGDPRConsent.fromList(it)
        }
      }
      132.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGDPRPurposeGrants.fromList(it)
        }
      }
      133.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPIGranularStatus.fromList(it)
        }
      }
      134.toByte() -> {
        return (readValue(buffer) as? List<Any?>)?.let {
          HostAPISPConsent.fromList(it)
        }
      }
      else -> super.readValueOfType(type, buffer)
    }
  }
  override fun writeValue(stream: ByteArrayOutputStream, value: Any?)   {
    when (value) {
      is HostAPICCPAConsent -> {
        stream.write(128)
        writeValue(stream, value.toList())
      }
      is HostAPIConsentAction -> {
        stream.write(129)
        writeValue(stream, value.toList())
      }
      is HostAPIConsentStatus -> {
        stream.write(130)
        writeValue(stream, value.toList())
      }
      is HostAPIGDPRConsent -> {
        stream.write(131)
        writeValue(stream, value.toList())
      }
      is HostAPIGDPRPurposeGrants -> {
        stream.write(132)
        writeValue(stream, value.toList())
      }
      is HostAPIGranularStatus -> {
        stream.write(133)
        writeValue(stream, value.toList())
      }
      is HostAPISPConsent -> {
        stream.write(134)
        writeValue(stream, value.toList())
      }
      else -> super.writeValue(stream, value)
    }
  }
}

/** Generated class from Pigeon that represents Flutter messages that can be called from Kotlin. */
@Suppress("UNCHECKED_CAST")
class SourcepointUnifiedCmpFlutterApi(private val binaryMessenger: BinaryMessenger) {
  companion object {
    /** The codec used by SourcepointUnifiedCmpFlutterApi. */
    val codec: MessageCodec<Any?> by lazy {
      SourcepointUnifiedCmpFlutterApiCodec
    }
  }
  fun onUIFinished(viewIdArg: Long, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIFinished"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(viewIdArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onUIReady(viewIdArg: Long, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onUIReady"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(viewIdArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onError(errorArg: HostAPISourcepointUnifiedCmpError, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onError"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(errorArg.raw)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onConsentReady(consentArg: HostAPISPConsent, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onConsentReady"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(consentArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onAction(viewIdArg: Long, consentActionArg: HostAPIConsentAction, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onAction"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(viewIdArg, consentActionArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onNoIntentActivitiesFound(urlArg: String, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onNoIntentActivitiesFound"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(urlArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
  fun onSpFinished(consentArg: HostAPISPConsent, callback: (Result<Unit>) -> Unit) {
    val channelName = "dev.flutter.pigeon.sourcepoint_unified_cmp_android.SourcepointUnifiedCmpFlutterApi.onSpFinished"
    val channel = BasicMessageChannel<Any?>(binaryMessenger, channelName, codec)
    channel.send(listOf(consentArg)) {
      if (it is List<*>) {
        if (it.size > 1) {
          callback(Result.failure(FlutterError(it[0] as String, it[1] as String, it[2] as String?)))
        } else {
          callback(Result.success(Unit))
        }
      } else {
        callback(Result.failure(createConnectionError(channelName)))
      } 
    }
  }
}

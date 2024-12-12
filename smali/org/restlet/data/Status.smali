.class public final Lorg/restlet/data/Status;
.super Ljava/lang/Object;
.source "Status.java"


# static fields
.field private static final BASE_HTTP:Ljava/lang/String; = "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html"

.field private static final BASE_RESTLET:Ljava/lang/String;

.field private static final BASE_WEBDAV:Ljava/lang/String; = "http://www.webdav.org/specs/rfc2518.html"

.field public static final CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_CONFLICT:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_EXPECTATION_FAILED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_FAILED_DEPENDENCY:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_GONE:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_LENGTH_REQUIRED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_LOCKED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_PAYMENT_REQUIRED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_PROXY_AUTHENTIFICATION_REQUIRED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_REQUEST_ENTITY_TOO_LARGE:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_REQUEST_TIMEOUT:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_REQUEST_URI_TOO_LONG:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_UNAUTHORIZED:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_UNPROCESSABLE_ENTITY:Lorg/restlet/data/Status;

.field public static final CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:Lorg/restlet/data/Status;

.field public static final CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

.field public static final CONNECTOR_ERROR_CONNECTION:Lorg/restlet/data/Status;

.field public static final CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

.field public static final INFO_CONTINUE:Lorg/restlet/data/Status;

.field public static final INFO_DISCONNECTED_OPERATION:Lorg/restlet/data/Status;

.field public static final INFO_HEURISTIC_EXPIRATION:Lorg/restlet/data/Status;

.field public static final INFO_MISC_WARNING:Lorg/restlet/data/Status;

.field public static final INFO_PROCESSING:Lorg/restlet/data/Status;

.field public static final INFO_REVALIDATION_FAILED:Lorg/restlet/data/Status;

.field public static final INFO_STALE_RESPONSE:Lorg/restlet/data/Status;

.field public static final INFO_SWITCHING_PROTOCOL:Lorg/restlet/data/Status;

.field public static final REDIRECTION_FOUND:Lorg/restlet/data/Status;

.field public static final REDIRECTION_MULTIPLE_CHOICES:Lorg/restlet/data/Status;

.field public static final REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

.field public static final REDIRECTION_PERMANENT:Lorg/restlet/data/Status;

.field public static final REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

.field public static final REDIRECTION_TEMPORARY:Lorg/restlet/data/Status;

.field public static final REDIRECTION_USE_PROXY:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_BAD_GATEWAY:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_GATEWAY_TIMEOUT:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_INSUFFICIENT_STORAGE:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_NOT_IMPLEMENTED:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_SERVICE_UNAVAILABLE:Lorg/restlet/data/Status;

.field public static final SERVER_ERROR_VERSION_NOT_SUPPORTED:Lorg/restlet/data/Status;

.field public static final SUCCESS_ACCEPTED:Lorg/restlet/data/Status;

.field public static final SUCCESS_CREATED:Lorg/restlet/data/Status;

.field public static final SUCCESS_MISC_PERSISTENT_WARNING:Lorg/restlet/data/Status;

.field public static final SUCCESS_MULTI_STATUS:Lorg/restlet/data/Status;

.field public static final SUCCESS_NON_AUTHORITATIVE:Lorg/restlet/data/Status;

.field public static final SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

.field public static final SUCCESS_OK:Lorg/restlet/data/Status;

.field public static final SUCCESS_PARTIAL_CONTENT:Lorg/restlet/data/Status;

.field public static final SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

.field public static final SUCCESS_TRANSFORMATION_APPLIED:Lorg/restlet/data/Status;


# instance fields
.field private final code:I

.field private final description:Ljava/lang/String;

.field private volatile reasonPhrase:Ljava/lang/String;

.field private final throwable:Ljava/lang/Throwable;

.field private final uri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 48
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://www.restlet.org/documentation/2.1/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    invoke-virtual {v1}, Lorg/restlet/engine/Edition;->getShortName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/api/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/restlet/data/Status;->BASE_RESTLET:Ljava/lang/String;

    .line 65
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x190

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    .line 75
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x199

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_CONFLICT:Lorg/restlet/data/Status;

    .line 86
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1a1

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_EXPECTATION_FAILED:Lorg/restlet/data/Status;

    .line 96
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1a8

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FAILED_DEPENDENCY:Lorg/restlet/data/Status;

    .line 106
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x193

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    .line 116
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19a

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_GONE:Lorg/restlet/data/Status;

    .line 126
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19b

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_LENGTH_REQUIRED:Lorg/restlet/data/Status;

    .line 135
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1a7

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_LOCKED:Lorg/restlet/data/Status;

    .line 145
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x195

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    .line 156
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x196

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    .line 167
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x194

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    .line 176
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x192

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PAYMENT_REQUIRED:Lorg/restlet/data/Status;

    .line 186
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19c

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    .line 197
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x197

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PROXY_AUTHENTIFICATION_REQUIRED:Lorg/restlet/data/Status;

    .line 208
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19d

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_ENTITY_TOO_LARGE:Lorg/restlet/data/Status;

    .line 220
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x198

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_TIMEOUT:Lorg/restlet/data/Status;

    .line 230
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19e

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_URI_TOO_LONG:Lorg/restlet/data/Status;

    .line 241
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1a0

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/restlet/data/Status;

    .line 251
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x191

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNAUTHORIZED:Lorg/restlet/data/Status;

    .line 261
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1a6

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNPROCESSABLE_ENTITY:Lorg/restlet/data/Status;

    .line 273
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x19f

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:Lorg/restlet/data/Status;

    .line 280
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x3e9

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    .line 286
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x3e8

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_CONNECTION:Lorg/restlet/data/Status;

    .line 293
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x3ea

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    .line 304
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x64

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_CONTINUE:Lorg/restlet/data/Status;

    .line 315
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x70

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_DISCONNECTED_OPERATION:Lorg/restlet/data/Status;

    .line 326
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x71

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_HEURISTIC_EXPIRATION:Lorg/restlet/data/Status;

    .line 336
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xc7

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_MISC_WARNING:Lorg/restlet/data/Status;

    .line 347
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x66

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_PROCESSING:Lorg/restlet/data/Status;

    .line 358
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x6f

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_REVALIDATION_FAILED:Lorg/restlet/data/Status;

    .line 368
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x6e

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_STALE_RESPONSE:Lorg/restlet/data/Status;

    .line 379
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x65

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->INFO_SWITCHING_PROTOCOL:Lorg/restlet/data/Status;

    .line 390
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x12e

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_FOUND:Lorg/restlet/data/Status;

    .line 401
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x12c

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_MULTIPLE_CHOICES:Lorg/restlet/data/Status;

    .line 411
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x130

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    .line 421
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x12d

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_PERMANENT:Lorg/restlet/data/Status;

    .line 431
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x12f

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

    .line 441
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x133

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_TEMPORARY:Lorg/restlet/data/Status;

    .line 451
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x131

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->REDIRECTION_USE_PROXY:Lorg/restlet/data/Status;

    .line 462
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f6

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_BAD_GATEWAY:Lorg/restlet/data/Status;

    .line 472
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f8

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_GATEWAY_TIMEOUT:Lorg/restlet/data/Status;

    .line 482
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1fb

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INSUFFICIENT_STORAGE:Lorg/restlet/data/Status;

    .line 493
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f4

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    .line 503
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f5

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_NOT_IMPLEMENTED:Lorg/restlet/data/Status;

    .line 513
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f7

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_SERVICE_UNAVAILABLE:Lorg/restlet/data/Status;

    .line 524
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x1f9

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_VERSION_NOT_SUPPORTED:Lorg/restlet/data/Status;

    .line 535
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xca

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_ACCEPTED:Lorg/restlet/data/Status;

    .line 545
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xc9

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_CREATED:Lorg/restlet/data/Status;

    .line 555
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0x12b

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_MISC_PERSISTENT_WARNING:Lorg/restlet/data/Status;

    .line 564
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xcf

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_MULTI_STATUS:Lorg/restlet/data/Status;

    .line 575
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xcc

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    .line 586
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xcb

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_NON_AUTHORITATIVE:Lorg/restlet/data/Status;

    .line 595
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xc8

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    .line 606
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xce

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_PARTIAL_CONTENT:Lorg/restlet/data/Status;

    .line 616
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xcd

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    .line 626
    new-instance v0, Lorg/restlet/data/Status;

    const/16 v1, 0xd6

    invoke-direct {v0, v1}, Lorg/restlet/data/Status;-><init>(I)V

    sput-object v0, Lorg/restlet/data/Status;->SUCCESS_TRANSFORMATION_APPLIED:Lorg/restlet/data/Status;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 6
    .param p1, "code"    # I

    .prologue
    const/4 v2, 0x0

    .line 962
    move-object v0, p0

    move v1, p1

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "reasonPhrase"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;
    .param p4, "uri"    # Ljava/lang/String;

    .prologue
    .line 979
    const/4 v2, 0x0

    move-object v0, p0

    move v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 6
    .param p1, "code"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    const/4 v3, 0x0

    .line 991
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "reasonPhrase"    # Ljava/lang/String;
    .param p4, "description"    # Ljava/lang/String;
    .param p5, "uri"    # Ljava/lang/String;

    .prologue
    .line 1009
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1010
    iput p1, p0, Lorg/restlet/data/Status;->code:I

    .line 1011
    iput-object p2, p0, Lorg/restlet/data/Status;->throwable:Ljava/lang/Throwable;

    .line 1012
    invoke-static {p3}, Lorg/restlet/data/Status;->checkReasonPhrase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/Status;->reasonPhrase:Ljava/lang/String;

    .line 1013
    iput-object p4, p0, Lorg/restlet/data/Status;->description:Ljava/lang/String;

    .line 1014
    iput-object p5, p0, Lorg/restlet/data/Status;->uri:Ljava/lang/String;

    .line 1015
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/String;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 1026
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1027
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 1038
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/Status;-><init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 1039
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/Status;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 6
    .param p1, "status"    # Lorg/restlet/data/Status;
    .param p2, "throwable"    # Ljava/lang/Throwable;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 1052
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getCode()I

    move-result v1

    if-nez p2, :cond_0

    invoke-virtual {p1}, Lorg/restlet/data/Status;->getThrowable()Ljava/lang/Throwable;

    move-result-object v2

    :goto_0
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v3

    if-nez p3, :cond_1

    invoke-virtual {p1}, Lorg/restlet/data/Status;->getDescription()Ljava/lang/String;

    move-result-object v4

    :goto_1
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getUri()Ljava/lang/String;

    move-result-object v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/Status;-><init>(ILjava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    return-void

    :cond_0
    move-object v2, p2

    .line 1052
    goto :goto_0

    :cond_1
    move-object v4, p3

    goto :goto_1
.end method

.method private static checkReasonPhrase(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "reasonPhrase"    # Ljava/lang/String;

    .prologue
    .line 641
    if-eqz p0, :cond_1

    .line 642
    const-string v0, "\n"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\r"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 643
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Reason phrase of the status must not contain CR or LF characters."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 648
    :cond_1
    return-object p0
.end method

.method public static isClientError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 660
    const/16 v0, 0x190

    if-lt p0, v0, :cond_0

    const/16 v0, 0x1f3

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isConnectorError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 672
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x44b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 683
    invoke-static {p0}, Lorg/restlet/data/Status;->isClientError(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/data/Status;->isServerError(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lorg/restlet/data/Status;->isConnectorError(I)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isGlobalError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 696
    const/16 v0, 0x258

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2bb

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isInformational(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 708
    const/16 v0, 0x64

    if-lt p0, v0, :cond_0

    const/16 v0, 0xc7

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRedirection(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 720
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_0

    const/16 v0, 0x18f

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isServerError(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 732
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_0

    const/16 v0, 0x257

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSuccess(I)Z
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 744
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x12b

    if-gt p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static valueOf(I)Lorg/restlet/data/Status;
    .locals 1
    .param p0, "code"    # I

    .prologue
    .line 756
    const/4 v0, 0x0

    .line 758
    .local v0, "result":Lorg/restlet/data/Status;
    sparse-switch p0, :sswitch_data_0

    .line 934
    new-instance v0, Lorg/restlet/data/Status;

    .end local v0    # "result":Lorg/restlet/data/Status;
    invoke-direct {v0, p0}, Lorg/restlet/data/Status;-><init>(I)V

    .line 937
    .restart local v0    # "result":Lorg/restlet/data/Status;
    :goto_0
    return-object v0

    .line 760
    :sswitch_0
    sget-object v0, Lorg/restlet/data/Status;->INFO_CONTINUE:Lorg/restlet/data/Status;

    .line 761
    goto :goto_0

    .line 763
    :sswitch_1
    sget-object v0, Lorg/restlet/data/Status;->INFO_SWITCHING_PROTOCOL:Lorg/restlet/data/Status;

    .line 764
    goto :goto_0

    .line 766
    :sswitch_2
    sget-object v0, Lorg/restlet/data/Status;->INFO_PROCESSING:Lorg/restlet/data/Status;

    .line 767
    goto :goto_0

    .line 769
    :sswitch_3
    sget-object v0, Lorg/restlet/data/Status;->INFO_STALE_RESPONSE:Lorg/restlet/data/Status;

    .line 770
    goto :goto_0

    .line 772
    :sswitch_4
    sget-object v0, Lorg/restlet/data/Status;->INFO_REVALIDATION_FAILED:Lorg/restlet/data/Status;

    .line 773
    goto :goto_0

    .line 775
    :sswitch_5
    sget-object v0, Lorg/restlet/data/Status;->INFO_DISCONNECTED_OPERATION:Lorg/restlet/data/Status;

    .line 776
    goto :goto_0

    .line 778
    :sswitch_6
    sget-object v0, Lorg/restlet/data/Status;->INFO_HEURISTIC_EXPIRATION:Lorg/restlet/data/Status;

    .line 779
    goto :goto_0

    .line 781
    :sswitch_7
    sget-object v0, Lorg/restlet/data/Status;->INFO_MISC_WARNING:Lorg/restlet/data/Status;

    .line 782
    goto :goto_0

    .line 785
    :sswitch_8
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_OK:Lorg/restlet/data/Status;

    .line 786
    goto :goto_0

    .line 788
    :sswitch_9
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_CREATED:Lorg/restlet/data/Status;

    .line 789
    goto :goto_0

    .line 791
    :sswitch_a
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_ACCEPTED:Lorg/restlet/data/Status;

    .line 792
    goto :goto_0

    .line 794
    :sswitch_b
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_NON_AUTHORITATIVE:Lorg/restlet/data/Status;

    .line 795
    goto :goto_0

    .line 797
    :sswitch_c
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_NO_CONTENT:Lorg/restlet/data/Status;

    .line 798
    goto :goto_0

    .line 800
    :sswitch_d
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_RESET_CONTENT:Lorg/restlet/data/Status;

    .line 801
    goto :goto_0

    .line 803
    :sswitch_e
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_PARTIAL_CONTENT:Lorg/restlet/data/Status;

    .line 804
    goto :goto_0

    .line 806
    :sswitch_f
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_MULTI_STATUS:Lorg/restlet/data/Status;

    .line 807
    goto :goto_0

    .line 809
    :sswitch_10
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_TRANSFORMATION_APPLIED:Lorg/restlet/data/Status;

    .line 810
    goto :goto_0

    .line 812
    :sswitch_11
    sget-object v0, Lorg/restlet/data/Status;->SUCCESS_MISC_PERSISTENT_WARNING:Lorg/restlet/data/Status;

    .line 813
    goto :goto_0

    .line 816
    :sswitch_12
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_MULTIPLE_CHOICES:Lorg/restlet/data/Status;

    .line 817
    goto :goto_0

    .line 819
    :sswitch_13
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_PERMANENT:Lorg/restlet/data/Status;

    .line 820
    goto :goto_0

    .line 822
    :sswitch_14
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_FOUND:Lorg/restlet/data/Status;

    .line 823
    goto :goto_0

    .line 825
    :sswitch_15
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_SEE_OTHER:Lorg/restlet/data/Status;

    .line 826
    goto :goto_0

    .line 828
    :sswitch_16
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_NOT_MODIFIED:Lorg/restlet/data/Status;

    .line 829
    goto :goto_0

    .line 831
    :sswitch_17
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_USE_PROXY:Lorg/restlet/data/Status;

    .line 832
    goto :goto_0

    .line 834
    :sswitch_18
    sget-object v0, Lorg/restlet/data/Status;->REDIRECTION_TEMPORARY:Lorg/restlet/data/Status;

    .line 835
    goto :goto_0

    .line 838
    :sswitch_19
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_BAD_REQUEST:Lorg/restlet/data/Status;

    .line 839
    goto :goto_0

    .line 841
    :sswitch_1a
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNAUTHORIZED:Lorg/restlet/data/Status;

    .line 842
    goto :goto_0

    .line 844
    :sswitch_1b
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PAYMENT_REQUIRED:Lorg/restlet/data/Status;

    .line 845
    goto :goto_0

    .line 847
    :sswitch_1c
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FORBIDDEN:Lorg/restlet/data/Status;

    .line 848
    goto :goto_0

    .line 850
    :sswitch_1d
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_FOUND:Lorg/restlet/data/Status;

    .line 851
    goto :goto_0

    .line 853
    :sswitch_1e
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_METHOD_NOT_ALLOWED:Lorg/restlet/data/Status;

    .line 854
    goto :goto_0

    .line 856
    :sswitch_1f
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_NOT_ACCEPTABLE:Lorg/restlet/data/Status;

    .line 857
    goto :goto_0

    .line 859
    :sswitch_20
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PROXY_AUTHENTIFICATION_REQUIRED:Lorg/restlet/data/Status;

    .line 860
    goto :goto_0

    .line 862
    :sswitch_21
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_TIMEOUT:Lorg/restlet/data/Status;

    .line 863
    goto :goto_0

    .line 865
    :sswitch_22
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_CONFLICT:Lorg/restlet/data/Status;

    .line 866
    goto :goto_0

    .line 868
    :sswitch_23
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_GONE:Lorg/restlet/data/Status;

    .line 869
    goto :goto_0

    .line 871
    :sswitch_24
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_LENGTH_REQUIRED:Lorg/restlet/data/Status;

    .line 872
    goto :goto_0

    .line 874
    :sswitch_25
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_PRECONDITION_FAILED:Lorg/restlet/data/Status;

    .line 875
    goto :goto_0

    .line 877
    :sswitch_26
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_ENTITY_TOO_LARGE:Lorg/restlet/data/Status;

    .line 878
    goto :goto_0

    .line 880
    :sswitch_27
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_URI_TOO_LONG:Lorg/restlet/data/Status;

    .line 881
    goto :goto_0

    .line 883
    :sswitch_28
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNSUPPORTED_MEDIA_TYPE:Lorg/restlet/data/Status;

    .line 884
    goto :goto_0

    .line 886
    :sswitch_29
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUESTED_RANGE_NOT_SATISFIABLE:Lorg/restlet/data/Status;

    .line 887
    goto :goto_0

    .line 889
    :sswitch_2a
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_EXPECTATION_FAILED:Lorg/restlet/data/Status;

    .line 890
    goto/16 :goto_0

    .line 892
    :sswitch_2b
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_UNPROCESSABLE_ENTITY:Lorg/restlet/data/Status;

    .line 893
    goto/16 :goto_0

    .line 895
    :sswitch_2c
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_LOCKED:Lorg/restlet/data/Status;

    .line 896
    goto/16 :goto_0

    .line 898
    :sswitch_2d
    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_FAILED_DEPENDENCY:Lorg/restlet/data/Status;

    .line 899
    goto/16 :goto_0

    .line 902
    :sswitch_2e
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INTERNAL:Lorg/restlet/data/Status;

    .line 903
    goto/16 :goto_0

    .line 905
    :sswitch_2f
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_NOT_IMPLEMENTED:Lorg/restlet/data/Status;

    .line 906
    goto/16 :goto_0

    .line 908
    :sswitch_30
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_BAD_GATEWAY:Lorg/restlet/data/Status;

    .line 909
    goto/16 :goto_0

    .line 911
    :sswitch_31
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_SERVICE_UNAVAILABLE:Lorg/restlet/data/Status;

    .line 912
    goto/16 :goto_0

    .line 914
    :sswitch_32
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_GATEWAY_TIMEOUT:Lorg/restlet/data/Status;

    .line 915
    goto/16 :goto_0

    .line 917
    :sswitch_33
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_VERSION_NOT_SUPPORTED:Lorg/restlet/data/Status;

    .line 918
    goto/16 :goto_0

    .line 920
    :sswitch_34
    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_INSUFFICIENT_STORAGE:Lorg/restlet/data/Status;

    .line 921
    goto/16 :goto_0

    .line 924
    :sswitch_35
    sget-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_CONNECTION:Lorg/restlet/data/Status;

    .line 925
    goto/16 :goto_0

    .line 927
    :sswitch_36
    sget-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_COMMUNICATION:Lorg/restlet/data/Status;

    .line 928
    goto/16 :goto_0

    .line 930
    :sswitch_37
    sget-object v0, Lorg/restlet/data/Status;->CONNECTOR_ERROR_INTERNAL:Lorg/restlet/data/Status;

    .line 931
    goto/16 :goto_0

    .line 758
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x6f -> :sswitch_4
        0x70 -> :sswitch_5
        0x71 -> :sswitch_6
        0xc7 -> :sswitch_7
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_b
        0xcc -> :sswitch_c
        0xcd -> :sswitch_d
        0xce -> :sswitch_e
        0xcf -> :sswitch_f
        0xd6 -> :sswitch_10
        0x12b -> :sswitch_11
        0x12c -> :sswitch_12
        0x12d -> :sswitch_13
        0x12e -> :sswitch_14
        0x12f -> :sswitch_15
        0x130 -> :sswitch_16
        0x131 -> :sswitch_17
        0x133 -> :sswitch_18
        0x190 -> :sswitch_19
        0x191 -> :sswitch_1a
        0x192 -> :sswitch_1b
        0x193 -> :sswitch_1c
        0x194 -> :sswitch_1d
        0x195 -> :sswitch_1e
        0x196 -> :sswitch_1f
        0x197 -> :sswitch_20
        0x198 -> :sswitch_21
        0x199 -> :sswitch_22
        0x19a -> :sswitch_23
        0x19b -> :sswitch_24
        0x19c -> :sswitch_25
        0x19d -> :sswitch_26
        0x19e -> :sswitch_27
        0x19f -> :sswitch_28
        0x1a0 -> :sswitch_29
        0x1a1 -> :sswitch_2a
        0x1a6 -> :sswitch_2b
        0x1a7 -> :sswitch_2c
        0x1a8 -> :sswitch_2d
        0x1f4 -> :sswitch_2e
        0x1f5 -> :sswitch_2f
        0x1f6 -> :sswitch_30
        0x1f7 -> :sswitch_31
        0x1f8 -> :sswitch_32
        0x1f9 -> :sswitch_33
        0x1fb -> :sswitch_34
        0x3e8 -> :sswitch_35
        0x3e9 -> :sswitch_36
        0x3ea -> :sswitch_37
    .end sparse-switch
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 1067
    instance-of v0, p1, Lorg/restlet/data/Status;

    if-eqz v0, :cond_0

    iget v0, p0, Lorg/restlet/data/Status;->code:I

    check-cast p1, Lorg/restlet/data/Status;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/Status;->getCode()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    .prologue
    .line 1077
    iget v0, p0, Lorg/restlet/data/Status;->code:I

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1088
    iget-object v0, p0, Lorg/restlet/data/Status;->description:Ljava/lang/String;

    .line 1090
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1091
    iget v1, p0, Lorg/restlet/data/Status;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 1268
    :cond_0
    :goto_0
    return-object v0

    .line 1093
    :sswitch_0
    const-string v0, "The client should continue with its request"

    .line 1094
    goto :goto_0

    .line 1096
    :sswitch_1
    const-string v0, "The server is willing to change the application protocol being used on this connection"

    .line 1097
    goto :goto_0

    .line 1099
    :sswitch_2
    const-string v0, "Interim response used to inform the client that the server has accepted the complete request, but has not yet completed it"

    .line 1100
    goto :goto_0

    .line 1102
    :sswitch_3
    const-string v0, "MUST be included whenever the returned response is stale"

    .line 1103
    goto :goto_0

    .line 1105
    :sswitch_4
    const-string v0, "MUST be included if a cache returns a stale response because an attempt to revalidate the response failed, due to an inability to reach the server"

    .line 1106
    goto :goto_0

    .line 1108
    :sswitch_5
    const-string v0, "SHOULD be included if the cache is intentionally disconnected from the rest of the network for a period of time"

    .line 1109
    goto :goto_0

    .line 1111
    :sswitch_6
    const-string v0, "MUST be included if the cache heuristically chose a freshness lifetime greater than 24 hours and the response\'s age is greater than 24 hours"

    .line 1112
    goto :goto_0

    .line 1114
    :sswitch_7
    const-string v0, "The warning text MAY include arbitrary information to be presented to a human user, or logged. A system receiving this warning MUST NOT take any automated action, besides presenting the warning to the user"

    .line 1115
    goto :goto_0

    .line 1118
    :sswitch_8
    const-string v0, "The request has succeeded"

    .line 1119
    goto :goto_0

    .line 1121
    :sswitch_9
    const-string v0, "The request has been fulfilled and resulted in a new resource being created"

    .line 1122
    goto :goto_0

    .line 1124
    :sswitch_a
    const-string v0, "The request has been accepted for processing, but the processing has not been completed"

    .line 1125
    goto :goto_0

    .line 1127
    :sswitch_b
    const-string v0, "The returned meta-information is not the definitive set as available from the origin server"

    .line 1128
    goto :goto_0

    .line 1130
    :sswitch_c
    const-string v0, "The server has fulfilled the request but does not need to return an entity-body, and might want to return updated meta-information"

    .line 1131
    goto :goto_0

    .line 1133
    :sswitch_d
    const-string v0, "The server has fulfilled the request and the user agent should reset the document view which caused the request to be sent"

    .line 1134
    goto :goto_0

    .line 1136
    :sswitch_e
    const-string v0, "The server has fulfilled the partial get request for the resource"

    .line 1137
    goto :goto_0

    .line 1139
    :sswitch_f
    const-string v0, "Provides status for multiple independent operations"

    .line 1140
    goto :goto_0

    .line 1142
    :sswitch_10
    const-string v0, "MUST be added by an intermediate cache or proxy if it applies any transformation changing the content-coding (as specified in the Content-Encoding header) or media-type (as specified in the Content-Type header) of the response, or the entity-body of the response, unless this Warning code already appears in the response"

    .line 1143
    goto :goto_0

    .line 1145
    :sswitch_11
    const-string v0, "The warning text MAY include arbitrary information to be presented to a human user, or logged. A system receiving this warning MUST NOT take any automated action"

    .line 1146
    goto :goto_0

    .line 1149
    :sswitch_12
    const-string v0, "The requested resource corresponds to any one of a set of representations"

    .line 1150
    goto :goto_0

    .line 1152
    :sswitch_13
    const-string v0, "The requested resource has been assigned a new permanent URI"

    .line 1153
    goto :goto_0

    .line 1155
    :sswitch_14
    const-string v0, "The requested resource can be found under a different URI"

    .line 1156
    goto :goto_0

    .line 1158
    :sswitch_15
    const-string v0, "The response to the request can be found under a different URI"

    .line 1159
    goto :goto_0

    .line 1161
    :sswitch_16
    const-string v0, "The client has performed a conditional GET request and the document has not been modified"

    .line 1162
    goto :goto_0

    .line 1164
    :sswitch_17
    const-string v0, "The requested resource must be accessed through the proxy given by the location field"

    .line 1165
    goto :goto_0

    .line 1167
    :sswitch_18
    const-string v0, "The requested resource resides temporarily under a different URI"

    .line 1168
    goto :goto_0

    .line 1171
    :sswitch_19
    const-string v0, "The request could not be understood by the server due to malformed syntax"

    .line 1172
    goto :goto_0

    .line 1174
    :sswitch_1a
    const-string v0, "The request requires user authentication"

    .line 1175
    goto :goto_0

    .line 1177
    :sswitch_1b
    const-string v0, "This code is reserved for future use"

    .line 1178
    goto :goto_0

    .line 1180
    :sswitch_1c
    const-string v0, "The server understood the request, but is refusing to fulfill it"

    .line 1181
    goto :goto_0

    .line 1183
    :sswitch_1d
    const-string v0, "The server has not found anything matching the request URI"

    .line 1184
    goto :goto_0

    .line 1186
    :sswitch_1e
    const-string v0, "The method specified in the request is not allowed for the resource identified by the request URI"

    .line 1187
    goto :goto_0

    .line 1189
    :sswitch_1f
    const-string v0, "The resource identified by the request is only capable of generating response entities which have content characteristics not acceptable according to the accept headers sent in the request"

    .line 1190
    goto :goto_0

    .line 1192
    :sswitch_20
    const-string v0, "This code is similar to Unauthorized, but indicates that the client must first authenticate itself with the proxy"

    .line 1193
    goto :goto_0

    .line 1195
    :sswitch_21
    const-string v0, "The client did not produce a request within the time that the server was prepared to wait"

    .line 1196
    goto :goto_0

    .line 1198
    :sswitch_22
    const-string v0, "The request could not be completed due to a conflict with the current state of the resource"

    .line 1199
    goto :goto_0

    .line 1201
    :sswitch_23
    const-string v0, "The requested resource is no longer available at the server and no forwarding address is known"

    .line 1202
    goto :goto_0

    .line 1204
    :sswitch_24
    const-string v0, "The server refuses to accept the request without a defined content length"

    .line 1205
    goto :goto_0

    .line 1207
    :sswitch_25
    const-string v0, "The precondition given in one or more of the request header fields evaluated to false when it was tested on the server"

    .line 1208
    goto :goto_0

    .line 1210
    :sswitch_26
    const-string v0, "The server is refusing to process a request because the request entity is larger than the server is willing or able to process"

    .line 1211
    goto :goto_0

    .line 1213
    :sswitch_27
    const-string v0, "The server is refusing to service the request because the request URI is longer than the server is willing to interpret"

    .line 1214
    goto :goto_0

    .line 1216
    :sswitch_28
    const-string v0, "The server is refusing to service the request because the entity of the request is in a format not supported by the requested resource for the requested method"

    .line 1217
    goto :goto_0

    .line 1219
    :sswitch_29
    const-string v0, "For byte ranges, this means that the first byte position were greater than the current length of the selected resource"

    .line 1220
    goto :goto_0

    .line 1222
    :sswitch_2a
    const-string v0, "The expectation given in the request header could not be met by this server"

    .line 1223
    goto/16 :goto_0

    .line 1225
    :sswitch_2b
    const-string v0, "The server understands the content type of the request entity and the syntax of the request entity is correct but was unable to process the contained instructions"

    .line 1226
    goto/16 :goto_0

    .line 1228
    :sswitch_2c
    const-string v0, "The source or destination resource of a method is locked"

    .line 1229
    goto/16 :goto_0

    .line 1231
    :sswitch_2d
    const-string v0, "The method could not be performed on the resource because the requested action depended on another action and that action failed"

    .line 1232
    goto/16 :goto_0

    .line 1235
    :sswitch_2e
    const-string v0, "The server encountered an unexpected condition which prevented it from fulfilling the request"

    .line 1236
    goto/16 :goto_0

    .line 1238
    :sswitch_2f
    const-string v0, "The server does not support the functionality required to fulfill the request"

    .line 1239
    goto/16 :goto_0

    .line 1241
    :sswitch_30
    const-string v0, "The server, while acting as a gateway or proxy, received an invalid response from the upstream server it accessed in attempting to fulfill the request"

    .line 1242
    goto/16 :goto_0

    .line 1244
    :sswitch_31
    const-string v0, "The server is currently unable to handle the request due to a temporary overloading or maintenance of the server"

    .line 1245
    goto/16 :goto_0

    .line 1247
    :sswitch_32
    const-string v0, "The server, while acting as a gateway or proxy, did not receive a timely response from the upstream server specified by the URI (e.g. HTTP, FTP, LDAP) or some other auxiliary server (e.g. DNS) it needed to access in attempting to complete the request"

    .line 1248
    goto/16 :goto_0

    .line 1250
    :sswitch_33
    const-string v0, "The server does not support, or refuses to support, the protocol version that was used in the request message"

    .line 1251
    goto/16 :goto_0

    .line 1253
    :sswitch_34
    const-string v0, "The method could not be performed on the resource because the server is unable to store the representation needed to successfully complete the request"

    .line 1254
    goto/16 :goto_0

    .line 1257
    :sswitch_35
    const-string v0, "The connector failed to connect to the server"

    .line 1258
    goto/16 :goto_0

    .line 1260
    :sswitch_36
    const-string v0, "The connector failed to complete the communication with the server"

    .line 1261
    goto/16 :goto_0

    .line 1263
    :sswitch_37
    const-string v0, "The connector encountered an unexpected condition which prevented it from fulfilling the request"

    goto/16 :goto_0

    .line 1091
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x6f -> :sswitch_4
        0x70 -> :sswitch_5
        0x71 -> :sswitch_6
        0xc7 -> :sswitch_7
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_b
        0xcc -> :sswitch_c
        0xcd -> :sswitch_d
        0xce -> :sswitch_e
        0xcf -> :sswitch_f
        0xd6 -> :sswitch_10
        0x12b -> :sswitch_11
        0x12c -> :sswitch_12
        0x12d -> :sswitch_13
        0x12e -> :sswitch_14
        0x12f -> :sswitch_15
        0x130 -> :sswitch_16
        0x131 -> :sswitch_17
        0x133 -> :sswitch_18
        0x190 -> :sswitch_19
        0x191 -> :sswitch_1a
        0x192 -> :sswitch_1b
        0x193 -> :sswitch_1c
        0x194 -> :sswitch_1d
        0x195 -> :sswitch_1e
        0x196 -> :sswitch_1f
        0x197 -> :sswitch_20
        0x198 -> :sswitch_21
        0x199 -> :sswitch_22
        0x19a -> :sswitch_23
        0x19b -> :sswitch_24
        0x19c -> :sswitch_25
        0x19d -> :sswitch_26
        0x19e -> :sswitch_27
        0x19f -> :sswitch_28
        0x1a0 -> :sswitch_29
        0x1a1 -> :sswitch_2a
        0x1a6 -> :sswitch_2b
        0x1a7 -> :sswitch_2c
        0x1a8 -> :sswitch_2d
        0x1f4 -> :sswitch_2e
        0x1f5 -> :sswitch_2f
        0x1f6 -> :sswitch_30
        0x1f7 -> :sswitch_31
        0x1f8 -> :sswitch_32
        0x1f9 -> :sswitch_33
        0x1fb -> :sswitch_34
        0x3e8 -> :sswitch_35
        0x3e9 -> :sswitch_36
        0x3ea -> :sswitch_37
    .end sparse-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1279
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getReasonPhrase()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1290
    iget-object v0, p0, Lorg/restlet/data/Status;->reasonPhrase:Ljava/lang/String;

    .line 1292
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1293
    iget v1, p0, Lorg/restlet/data/Status;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 1470
    :cond_0
    :goto_0
    return-object v0

    .line 1295
    :sswitch_0
    const-string v0, "Continue"

    .line 1296
    goto :goto_0

    .line 1298
    :sswitch_1
    const-string v0, "Switching Protocols"

    .line 1299
    goto :goto_0

    .line 1301
    :sswitch_2
    const-string v0, "Processing"

    .line 1302
    goto :goto_0

    .line 1304
    :sswitch_3
    const-string v0, "Response is stale"

    .line 1305
    goto :goto_0

    .line 1307
    :sswitch_4
    const-string v0, "Revalidation failed"

    .line 1308
    goto :goto_0

    .line 1310
    :sswitch_5
    const-string v0, "Disconnected operation"

    .line 1311
    goto :goto_0

    .line 1313
    :sswitch_6
    const-string v0, "Heuristic expiration"

    .line 1314
    goto :goto_0

    .line 1316
    :sswitch_7
    const-string v0, "Miscellaneous warning"

    .line 1317
    goto :goto_0

    .line 1320
    :sswitch_8
    const-string v0, "OK"

    .line 1321
    goto :goto_0

    .line 1323
    :sswitch_9
    const-string v0, "Created"

    .line 1324
    goto :goto_0

    .line 1326
    :sswitch_a
    const-string v0, "Accepted"

    .line 1327
    goto :goto_0

    .line 1329
    :sswitch_b
    const-string v0, "Non-Authoritative Information"

    .line 1330
    goto :goto_0

    .line 1332
    :sswitch_c
    const-string v0, "No Content"

    .line 1333
    goto :goto_0

    .line 1335
    :sswitch_d
    const-string v0, "Reset Content"

    .line 1336
    goto :goto_0

    .line 1338
    :sswitch_e
    const-string v0, "Partial Content"

    .line 1339
    goto :goto_0

    .line 1341
    :sswitch_f
    const-string v0, "Multi-Status"

    .line 1342
    goto :goto_0

    .line 1344
    :sswitch_10
    const-string v0, "Transformation applied"

    .line 1345
    goto :goto_0

    .line 1347
    :sswitch_11
    const-string v0, "Miscellaneous persistent warning"

    .line 1348
    goto :goto_0

    .line 1351
    :sswitch_12
    const-string v0, "Multiple Choices"

    .line 1352
    goto :goto_0

    .line 1354
    :sswitch_13
    const-string v0, "Moved Permanently"

    .line 1355
    goto :goto_0

    .line 1357
    :sswitch_14
    const-string v0, "Found"

    .line 1358
    goto :goto_0

    .line 1360
    :sswitch_15
    const-string v0, "See Other"

    .line 1361
    goto :goto_0

    .line 1363
    :sswitch_16
    const-string v0, "Not Modified"

    .line 1364
    goto :goto_0

    .line 1366
    :sswitch_17
    const-string v0, "Use Proxy"

    .line 1367
    goto :goto_0

    .line 1369
    :sswitch_18
    const-string v0, "Temporary Redirect"

    .line 1370
    goto :goto_0

    .line 1373
    :sswitch_19
    const-string v0, "Bad Request"

    .line 1374
    goto :goto_0

    .line 1376
    :sswitch_1a
    const-string v0, "Unauthorized"

    .line 1377
    goto :goto_0

    .line 1379
    :sswitch_1b
    const-string v0, "Payment Required"

    .line 1380
    goto :goto_0

    .line 1382
    :sswitch_1c
    const-string v0, "Forbidden"

    .line 1383
    goto :goto_0

    .line 1385
    :sswitch_1d
    const-string v0, "Not Found"

    .line 1386
    goto :goto_0

    .line 1388
    :sswitch_1e
    const-string v0, "Method Not Allowed"

    .line 1389
    goto :goto_0

    .line 1391
    :sswitch_1f
    const-string v0, "Not Acceptable"

    .line 1392
    goto :goto_0

    .line 1394
    :sswitch_20
    const-string v0, "Proxy Authentication Required"

    .line 1395
    goto :goto_0

    .line 1397
    :sswitch_21
    const-string v0, "Request Timeout"

    .line 1398
    goto :goto_0

    .line 1400
    :sswitch_22
    const-string v0, "Conflict"

    .line 1401
    goto :goto_0

    .line 1403
    :sswitch_23
    const-string v0, "Gone"

    .line 1404
    goto :goto_0

    .line 1406
    :sswitch_24
    const-string v0, "Length Required"

    .line 1407
    goto :goto_0

    .line 1409
    :sswitch_25
    const-string v0, "Precondition Failed"

    .line 1410
    goto :goto_0

    .line 1412
    :sswitch_26
    const-string v0, "Request Entity Too Large"

    .line 1413
    goto :goto_0

    .line 1415
    :sswitch_27
    const-string v0, "Request URI Too Long"

    .line 1416
    goto :goto_0

    .line 1418
    :sswitch_28
    const-string v0, "Unsupported Media Type"

    .line 1419
    goto :goto_0

    .line 1421
    :sswitch_29
    const-string v0, "Requested Range Not Satisfiable"

    .line 1422
    goto :goto_0

    .line 1424
    :sswitch_2a
    const-string v0, "Expectation Failed"

    .line 1425
    goto/16 :goto_0

    .line 1427
    :sswitch_2b
    const-string v0, "Unprocessable Entity"

    .line 1428
    goto/16 :goto_0

    .line 1430
    :sswitch_2c
    const-string v0, "Locked"

    .line 1431
    goto/16 :goto_0

    .line 1433
    :sswitch_2d
    const-string v0, "Failed Dependency"

    .line 1434
    goto/16 :goto_0

    .line 1437
    :sswitch_2e
    const-string v0, "Internal Server Error"

    .line 1438
    goto/16 :goto_0

    .line 1440
    :sswitch_2f
    const-string v0, "Not Implemented"

    .line 1441
    goto/16 :goto_0

    .line 1443
    :sswitch_30
    const-string v0, "Bad Gateway"

    .line 1444
    goto/16 :goto_0

    .line 1446
    :sswitch_31
    const-string v0, "Service Unavailable"

    .line 1447
    goto/16 :goto_0

    .line 1449
    :sswitch_32
    const-string v0, "Gateway Timeout"

    .line 1450
    goto/16 :goto_0

    .line 1452
    :sswitch_33
    const-string v0, "Version Not Supported"

    .line 1453
    goto/16 :goto_0

    .line 1455
    :sswitch_34
    const-string v0, "Insufficient Storage"

    .line 1456
    goto/16 :goto_0

    .line 1459
    :sswitch_35
    const-string v0, "Connection Error"

    .line 1460
    goto/16 :goto_0

    .line 1462
    :sswitch_36
    const-string v0, "Communication Error"

    .line 1463
    goto/16 :goto_0

    .line 1465
    :sswitch_37
    const-string v0, "Internal Connector Error"

    goto/16 :goto_0

    .line 1293
    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x6f -> :sswitch_4
        0x70 -> :sswitch_5
        0x71 -> :sswitch_6
        0xc7 -> :sswitch_7
        0xc8 -> :sswitch_8
        0xc9 -> :sswitch_9
        0xca -> :sswitch_a
        0xcb -> :sswitch_b
        0xcc -> :sswitch_c
        0xcd -> :sswitch_d
        0xce -> :sswitch_e
        0xcf -> :sswitch_f
        0xd6 -> :sswitch_10
        0x12b -> :sswitch_11
        0x12c -> :sswitch_12
        0x12d -> :sswitch_13
        0x12e -> :sswitch_14
        0x12f -> :sswitch_15
        0x130 -> :sswitch_16
        0x131 -> :sswitch_17
        0x133 -> :sswitch_18
        0x190 -> :sswitch_19
        0x191 -> :sswitch_1a
        0x192 -> :sswitch_1b
        0x193 -> :sswitch_1c
        0x194 -> :sswitch_1d
        0x195 -> :sswitch_1e
        0x196 -> :sswitch_1f
        0x197 -> :sswitch_20
        0x198 -> :sswitch_21
        0x199 -> :sswitch_22
        0x19a -> :sswitch_23
        0x19b -> :sswitch_24
        0x19c -> :sswitch_25
        0x19d -> :sswitch_26
        0x19e -> :sswitch_27
        0x19f -> :sswitch_28
        0x1a0 -> :sswitch_29
        0x1a1 -> :sswitch_2a
        0x1a6 -> :sswitch_2b
        0x1a7 -> :sswitch_2c
        0x1a8 -> :sswitch_2d
        0x1f4 -> :sswitch_2e
        0x1f5 -> :sswitch_2f
        0x1f6 -> :sswitch_30
        0x1f7 -> :sswitch_31
        0x1f8 -> :sswitch_32
        0x1f9 -> :sswitch_33
        0x1fb -> :sswitch_34
        0x3e8 -> :sswitch_35
        0x3e9 -> :sswitch_36
        0x3ea -> :sswitch_37
    .end sparse-switch
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 1479
    iget-object v0, p0, Lorg/restlet/data/Status;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getUri()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1488
    iget-object v0, p0, Lorg/restlet/data/Status;->uri:Ljava/lang/String;

    .line 1490
    .local v0, "result":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 1491
    iget v1, p0, Lorg/restlet/data/Status;->code:I

    sparse-switch v1, :sswitch_data_0

    .line 1659
    :cond_0
    :goto_0
    return-object v0

    .line 1493
    :sswitch_0
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.1.1"

    .line 1494
    goto :goto_0

    .line 1496
    :sswitch_1
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.1.2"

    .line 1497
    goto :goto_0

    .line 1499
    :sswitch_2
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_102"

    .line 1500
    goto :goto_0

    .line 1508
    :sswitch_3
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.46"

    .line 1509
    goto :goto_0

    .line 1512
    :sswitch_4
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.1"

    .line 1513
    goto :goto_0

    .line 1515
    :sswitch_5
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.2"

    .line 1516
    goto :goto_0

    .line 1518
    :sswitch_6
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.3"

    .line 1519
    goto :goto_0

    .line 1521
    :sswitch_7
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.4"

    .line 1522
    goto :goto_0

    .line 1524
    :sswitch_8
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.5"

    .line 1525
    goto :goto_0

    .line 1527
    :sswitch_9
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.6"

    .line 1528
    goto :goto_0

    .line 1530
    :sswitch_a
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.2.7"

    .line 1531
    goto :goto_0

    .line 1533
    :sswitch_b
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_207"

    .line 1534
    goto :goto_0

    .line 1537
    :sswitch_c
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.1"

    .line 1538
    goto :goto_0

    .line 1540
    :sswitch_d
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.2"

    .line 1541
    goto :goto_0

    .line 1543
    :sswitch_e
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.3"

    .line 1544
    goto :goto_0

    .line 1546
    :sswitch_f
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.4"

    .line 1547
    goto :goto_0

    .line 1549
    :sswitch_10
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.5"

    .line 1550
    goto :goto_0

    .line 1552
    :sswitch_11
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.6"

    .line 1553
    goto :goto_0

    .line 1555
    :sswitch_12
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.3.8"

    .line 1556
    goto :goto_0

    .line 1559
    :sswitch_13
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.1"

    .line 1560
    goto :goto_0

    .line 1562
    :sswitch_14
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.2"

    .line 1563
    goto :goto_0

    .line 1565
    :sswitch_15
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.3"

    .line 1566
    goto :goto_0

    .line 1568
    :sswitch_16
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.4"

    .line 1569
    goto :goto_0

    .line 1571
    :sswitch_17
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.5"

    .line 1572
    goto :goto_0

    .line 1574
    :sswitch_18
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.6"

    .line 1575
    goto :goto_0

    .line 1577
    :sswitch_19
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.7"

    .line 1578
    goto :goto_0

    .line 1580
    :sswitch_1a
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.8"

    .line 1581
    goto :goto_0

    .line 1583
    :sswitch_1b
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.9"

    .line 1584
    goto :goto_0

    .line 1586
    :sswitch_1c
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.10"

    .line 1587
    goto :goto_0

    .line 1589
    :sswitch_1d
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.11"

    .line 1590
    goto :goto_0

    .line 1592
    :sswitch_1e
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.12"

    .line 1593
    goto :goto_0

    .line 1595
    :sswitch_1f
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.13"

    .line 1596
    goto :goto_0

    .line 1598
    :sswitch_20
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.14"

    .line 1599
    goto :goto_0

    .line 1601
    :sswitch_21
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.15"

    .line 1602
    goto :goto_0

    .line 1604
    :sswitch_22
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.16"

    .line 1605
    goto :goto_0

    .line 1607
    :sswitch_23
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.17"

    .line 1608
    goto :goto_0

    .line 1610
    :sswitch_24
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.4.18"

    .line 1611
    goto :goto_0

    .line 1613
    :sswitch_25
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_422"

    .line 1614
    goto :goto_0

    .line 1616
    :sswitch_26
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_423"

    .line 1617
    goto :goto_0

    .line 1619
    :sswitch_27
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_424"

    .line 1620
    goto :goto_0

    .line 1623
    :sswitch_28
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.1"

    .line 1624
    goto :goto_0

    .line 1626
    :sswitch_29
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.2"

    .line 1627
    goto :goto_0

    .line 1629
    :sswitch_2a
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.3"

    .line 1630
    goto/16 :goto_0

    .line 1632
    :sswitch_2b
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.4"

    .line 1633
    goto/16 :goto_0

    .line 1635
    :sswitch_2c
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.5"

    .line 1636
    goto/16 :goto_0

    .line 1638
    :sswitch_2d
    const-string v0, "http://www.w3.org/Protocols/rfc2616/rfc2616-sec10.html#sec10.5.6"

    .line 1639
    goto/16 :goto_0

    .line 1641
    :sswitch_2e
    const-string v0, "http://www.webdav.org/specs/rfc2518.html#STATUS_507"

    .line 1642
    goto/16 :goto_0

    .line 1645
    :sswitch_2f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/restlet/data/Status;->BASE_RESTLET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "org/restlet/data/Status.html#CONNECTOR_ERROR_CONNECTION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1647
    goto/16 :goto_0

    .line 1649
    :sswitch_30
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/restlet/data/Status;->BASE_RESTLET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "org/restlet/data/Status.html#CONNECTOR_ERROR_COMMUNICATION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1651
    goto/16 :goto_0

    .line 1653
    :sswitch_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/restlet/data/Status;->BASE_RESTLET:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "org/restlet/data/Status.html#CONNECTOR_ERROR_INTERNAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 1491
    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x66 -> :sswitch_2
        0x6e -> :sswitch_3
        0x6f -> :sswitch_3
        0x70 -> :sswitch_3
        0x71 -> :sswitch_3
        0xc7 -> :sswitch_3
        0xc8 -> :sswitch_4
        0xc9 -> :sswitch_5
        0xca -> :sswitch_6
        0xcb -> :sswitch_7
        0xcc -> :sswitch_8
        0xcd -> :sswitch_9
        0xce -> :sswitch_a
        0xcf -> :sswitch_b
        0xd6 -> :sswitch_3
        0x12b -> :sswitch_3
        0x12c -> :sswitch_c
        0x12d -> :sswitch_d
        0x12e -> :sswitch_e
        0x12f -> :sswitch_f
        0x130 -> :sswitch_10
        0x131 -> :sswitch_11
        0x133 -> :sswitch_12
        0x190 -> :sswitch_13
        0x191 -> :sswitch_14
        0x192 -> :sswitch_15
        0x193 -> :sswitch_16
        0x194 -> :sswitch_17
        0x195 -> :sswitch_18
        0x196 -> :sswitch_19
        0x197 -> :sswitch_1a
        0x198 -> :sswitch_1b
        0x199 -> :sswitch_1c
        0x19a -> :sswitch_1d
        0x19b -> :sswitch_1e
        0x19c -> :sswitch_1f
        0x19d -> :sswitch_20
        0x19e -> :sswitch_21
        0x19f -> :sswitch_22
        0x1a0 -> :sswitch_23
        0x1a1 -> :sswitch_24
        0x1a6 -> :sswitch_25
        0x1a7 -> :sswitch_26
        0x1a8 -> :sswitch_27
        0x1f4 -> :sswitch_28
        0x1f5 -> :sswitch_29
        0x1f6 -> :sswitch_2a
        0x1f7 -> :sswitch_2b
        0x1f8 -> :sswitch_2c
        0x1f9 -> :sswitch_2d
        0x1fb -> :sswitch_2e
        0x3e8 -> :sswitch_2f
        0x3e9 -> :sswitch_30
        0x3ea -> :sswitch_31
    .end sparse-switch
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 1665
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    return v0
.end method

.method public isClientError()Z
    .locals 1

    .prologue
    .line 1675
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isClientError(I)Z

    move-result v0

    return v0
.end method

.method public isConnectorError()Z
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isConnectorError(I)Z

    move-result v0

    return v0
.end method

.method public isError()Z
    .locals 1

    .prologue
    .line 1694
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isError(I)Z

    move-result v0

    return v0
.end method

.method public isGlobalError()Z
    .locals 1

    .prologue
    .line 1704
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isGlobalError(I)Z

    move-result v0

    return v0
.end method

.method public isInformational()Z
    .locals 1

    .prologue
    .line 1714
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isInformational(I)Z

    move-result v0

    return v0
.end method

.method public isRecoverableError()Z
    .locals 1

    .prologue
    .line 1727
    invoke-virtual {p0}, Lorg/restlet/data/Status;->isConnectorError()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/restlet/data/Status;->CLIENT_ERROR_REQUEST_TIMEOUT:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_GATEWAY_TIMEOUT:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lorg/restlet/data/Status;->SERVER_ERROR_SERVICE_UNAVAILABLE:Lorg/restlet/data/Status;

    invoke-virtual {p0, v0}, Lorg/restlet/data/Status;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRedirection()Z
    .locals 1

    .prologue
    .line 1740
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isRedirection(I)Z

    move-result v0

    return v0
.end method

.method public isServerError()Z
    .locals 1

    .prologue
    .line 1750
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isServerError(I)Z

    move-result v0

    return v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 1760
    invoke-virtual {p0}, Lorg/restlet/data/Status;->getCode()I

    move-result v0

    invoke-static {v0}, Lorg/restlet/data/Status;->isSuccess(I)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1770
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/restlet/data/Status;->getReasonPhrase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/restlet/data/Status;->code:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/restlet/data/Status;->getDescription()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " - "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/Status;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

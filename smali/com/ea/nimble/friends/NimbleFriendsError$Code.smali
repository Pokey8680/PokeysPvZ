.class public final enum Lcom/ea/nimble/friends/NimbleFriendsError$Code;
.super Ljava/lang/Enum;
.source "NimbleFriendsError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/friends/NimbleFriendsError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Code"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/friends/NimbleFriendsError$Code;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_EMAIL_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_EMAIL_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_FACEBOOK_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_FACEBOOK_USER_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_NO_TARGETS_PROVIDED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_FRIENDS_PROVIDER_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID_START_INDEX:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_SERVER_RETURNED_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_SMS_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_SMS_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_SMS_NOT_SENT_OUT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

.field public static final enum NIMBLE_FRIENDS_UNKNOWN_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;


# instance fields
.field private m_value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 12
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_FACEBOOK_NOT_AVAILABLE"

    const v2, 0x15f90

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FACEBOOK_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 13
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE"

    const v2, 0x15f91

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 14
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_FACEBOOK_USER_NOT_LOGGED_IN"

    const v2, 0x15f92

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FACEBOOK_USER_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 15
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_EMAIL_NOT_AVAILABLE"

    const v2, 0x15f93

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_EMAIL_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 16
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_SMS_NOT_AVAILABLE"

    const v2, 0x15f94

    invoke-direct {v0, v1, v8, v2}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 17
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_EMAIL_LAST_REQUEST_NOT_FINISHED"

    const/4 v2, 0x5

    const v3, 0x15f95

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_EMAIL_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 18
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_SMS_LAST_REQUEST_NOT_FINISHED"

    const/4 v2, 0x6

    const v3, 0x15f96

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 19
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_SMS_NOT_SENT_OUT"

    const/4 v2, 0x7

    const v3, 0x15f97

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_NOT_SENT_OUT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 20
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_NO_TARGETS_PROVIDED"

    const/16 v2, 0x8

    const v3, 0x15f98

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_NO_TARGETS_PROVIDED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 21
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_SERVER_RETURNED_ERROR"

    const/16 v2, 0x9

    const v3, 0x15f99

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SERVER_RETURNED_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 23
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID"

    const/16 v2, 0xa

    const/16 v3, 0x2711

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 24
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT"

    const/16 v2, 0xb

    const/16 v3, 0x2712

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 25
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID_START_INDEX"

    const/16 v2, 0xc

    const/16 v3, 0x2713

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID_START_INDEX:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 26
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_FRIENDS_PROVIDER_NOT_AVAILABLE"

    const/16 v2, 0xd

    const/16 v3, 0x2714

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_PROVIDER_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 27
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST"

    const/16 v2, 0xe

    const/16 v3, 0x2715

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 28
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_ERROR"

    const/16 v2, 0xf

    const/16 v3, 0x2716

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 29
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE"

    const/16 v2, 0x10

    const/16 v3, 0x2717

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 30
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY"

    const/16 v2, 0x11

    const/16 v3, 0x2718

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 31
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED"

    const/16 v2, 0x12

    const/16 v3, 0x2719

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 32
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED"

    const/16 v2, 0x13

    const/16 v3, 0x271a

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 33
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN"

    const/16 v2, 0x14

    const/16 v3, 0x271b

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 34
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST"

    const/16 v2, 0x15

    const/16 v3, 0x271c

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 35
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST"

    const/16 v2, 0x16

    const/16 v3, 0x271c

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 36
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE"

    const/16 v2, 0x17

    const/16 v3, 0x271d

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 37
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE"

    const/16 v2, 0x18

    const/16 v3, 0x271e

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 38
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR"

    const/16 v2, 0x19

    const/16 v3, 0x271f

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 39
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED"

    const/16 v2, 0x1a

    const/16 v3, 0x2720

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 41
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED"

    const/16 v2, 0x1b

    const/16 v3, 0x2721

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 42
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR"

    const/16 v2, 0x1c

    const/16 v3, 0x2722

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 44
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    const-string v1, "NIMBLE_FRIENDS_UNKNOWN_ERROR"

    const/16 v2, 0x1d

    invoke-direct {v0, v1, v2, v4}, Lcom/ea/nimble/friends/NimbleFriendsError$Code;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_UNKNOWN_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    .line 10
    const/16 v0, 0x1e

    new-array v0, v0, [Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FACEBOOK_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_IDENTITY_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FACEBOOK_USER_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_EMAIL_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_EMAIL_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_LAST_REQUEST_NOT_FINISHED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SMS_NOT_SENT_OUT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_NO_TARGETS_PROVIDED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_SERVER_RETURNED_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_RANGE_EXCEED_LIMIT:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_INVALID_START_INDEX:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_PROVIDER_NOT_AVAILABLE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_NO_USER_IDS_LIST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_IDENTITY_SERVER_EMPTY_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_EMPTY:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x12

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_FRIENDS_LIST_NOT_UPDATED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x13

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_SUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x14

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_AUTHENTICATOR_NOT_LOGGED_IN:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x15

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x16

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_FAILED_TO_CREATE_GOS_REQUEST:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x17

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_ERROR_PARSING_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x18

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_EMPTY_HTTP_RESPONSE:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x19

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_SCOPE_FRIENDS_LIST_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_REFRESH_TYPE_UNSUPPORTED:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_ORIGIN_SERVICES_SERVER_RESPONSE_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    sget-object v2, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->NIMBLE_FRIENDS_UNKNOWN_ERROR:Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->$VALUES:[Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->m_value:I

    .line 49
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 10
    const-class v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/friends/NimbleFriendsError$Code;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->$VALUES:[Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    invoke-virtual {v0}, [Lcom/ea/nimble/friends/NimbleFriendsError$Code;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/friends/NimbleFriendsError$Code;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/ea/nimble/friends/NimbleFriendsError$Code;->m_value:I

    return v0
.end method

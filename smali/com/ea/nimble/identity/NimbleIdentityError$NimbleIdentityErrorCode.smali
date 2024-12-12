.class public final enum Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
.super Ljava/lang/Enum;
.source "NimbleIdentityError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/nimble/identity/NimbleIdentityError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NimbleIdentityErrorCode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

.field public static final enum NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;


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

    .line 14
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_USER_CANCELLED"

    const/16 v2, 0x64

    invoke-direct {v0, v1, v4, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 15
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION"

    const/16 v2, 0x65

    invoke-direct {v0, v1, v5, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 18
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED"

    const/16 v2, 0x3e9

    invoke-direct {v0, v1, v6, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 19
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED"

    const/16 v2, 0x3ea

    invoke-direct {v0, v1, v7, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 20
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS"

    const/16 v2, 0x3eb

    invoke-direct {v0, v1, v8, v2}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 21
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY"

    const/4 v2, 0x5

    const/16 v3, 0x44d

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 22
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO"

    const/4 v2, 0x6

    const/16 v3, 0x44e

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 24
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID"

    const/4 v2, 0x7

    const/16 v3, 0x5dc

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 25
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET"

    const/16 v2, 0x8

    const/16 v3, 0x5dd

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 28
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_INVALID_REQUEST"

    const/16 v2, 0x9

    const/16 v3, 0x7d1

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 29
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO"

    const/16 v2, 0xa

    const/16 v3, 0x7d2

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 32
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID"

    const/16 v2, 0xb

    const/16 v3, 0x238d

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 33
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID"

    const/16 v2, 0xc

    const/16 v3, 0x238e

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 34
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED"

    const/16 v2, 0xd

    const/16 v3, 0x238f

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 35
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS"

    const/16 v2, 0xe

    const/16 v3, 0x2390

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 36
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL"

    const/16 v2, 0xf

    const/16 v3, 0x2391

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 37
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED"

    const/16 v2, 0x10

    const/16 v3, 0x2392

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 39
    new-instance v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    const-string v1, "NIMBLE_IDENTITY_ERROR_UNKNOWN"

    const/16 v2, 0x11

    const v3, 0x7fffffff

    invoke-direct {v0, v1, v2, v3}, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    .line 11
    const/16 v0, 0x12

    new-array v0, v0, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_USER_CANCELLED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNSUPPORTED_ACTION:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v1, v0, v5

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNAUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v1, v0, v6

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_SESSION_EXPIRED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v1, v0, v7

    sget-object v1, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_LOGINPARAMS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_FIRST_PARTY:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_REFRESH_USER_INFO_FROM_PID_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_ID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_BAD_CLIENT_SECRET:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_REQUEST:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_INVALID_OAUTH_INFO:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_SOURCE_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_TARGET_INVALID:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NOT_AUTHENTICATED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_ACCESS_TOKENS:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_NO_URL:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_MIGRATION_FAILED:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->NIMBLE_IDENTITY_ERROR_UNKNOWN:Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    aput-object v2, v0, v1

    sput-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

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
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->m_value:I

    .line 44
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object v0
.end method

.method public static values()[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->$VALUES:[Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    invoke-virtual {v0}, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;

    return-object v0
.end method


# virtual methods
.method public intValue()I
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/ea/nimble/identity/NimbleIdentityError$NimbleIdentityErrorCode;->m_value:I

    return v0
.end method

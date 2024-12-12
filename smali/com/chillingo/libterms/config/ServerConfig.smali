.class public final Lcom/chillingo/libterms/config/ServerConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ENDPOINT:Ljava/lang/String; = "http%3A%2F%2Fchillingo-terms.chillingocloud.com"

.field public static final ENDPOINT_FALLBACK:Ljava/lang/String; = "http://chillingo-terms.chillingocloud.com"

.field public static final GLOBAL_DEFAULT_WAIT_TIME_SECONDS:I = 0x258

.field public static final GLOBAL_MINIMUM_AGE:I = 0xd

.field public static final PLATFORM:Ljava/lang/String; = "Android"

.field public static final SDK_BUILD_NUMBER:Ljava/lang/String; = "137"

.field public static final SDK_VERSION:Ljava/lang/String; = "1.9"

.field public static final TARGET_NAME:Ljava/lang/String; = "terms"

.field public static final TERMS_API_NAME:Ljava/lang/String; = "TermsAPI"

.field public static final TERMS_API_VERSION:Ljava/lang/String; = "1.2"

.field public static final TERMS_CONFIG_PATH:Ljava/lang/String; = "getLatest"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getCombinedSDKAndAPIString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 44
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getSDKString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/chillingo/libterms/config/ServerConfig;->getTermsAPIString()Ljava/lang/String;

    move-result-object v1

    .line 47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getSDKString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    const-string v0, "terms-1.9-137"

    return-object v0
.end method

.method public static getTermsAPIString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    const-string v0, "TermsAPI-1.2"

    return-object v0
.end method

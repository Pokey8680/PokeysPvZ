.class public final Lorg/restlet/data/ChallengeScheme;
.super Ljava/lang/Object;
.source "ChallengeScheme.java"


# static fields
.field public static final CUSTOM:Lorg/restlet/data/ChallengeScheme;

.field public static final FTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_AWS_QUERY:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_AWS_S3:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_AZURE_SHAREDKEY:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_AZURE_SHAREDKEY_LITE:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_BASIC:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_COOKIE:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_DIGEST:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_NTLM:Lorg/restlet/data/ChallengeScheme;

.field public static final HTTP_OAUTH:Lorg/restlet/data/ChallengeScheme;

.field public static final POP_BASIC:Lorg/restlet/data/ChallengeScheme;

.field public static final POP_DIGEST:Lorg/restlet/data/ChallengeScheme;

.field private static SCHEMES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lorg/restlet/data/ChallengeScheme;",
            ">;"
        }
    .end annotation
.end field

.field public static final SDC:Lorg/restlet/data/ChallengeScheme;

.field public static final SMTP_PLAIN:Lorg/restlet/data/ChallengeScheme;


# instance fields
.field private final description:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;

.field private volatile technicalName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 47
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "CUSTOM"

    const-string v3, "Custom"

    const-string v4, "Custom authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->CUSTOM:Lorg/restlet/data/ChallengeScheme;

    .line 51
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "FTP_PLAIN"

    const-string v3, "PLAIN"

    const-string v4, "Plain FTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->FTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    .line 55
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_AWS_S3"

    const-string v3, "AWS"

    const-string v4, "Amazon S3 HTTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AWS_S3:Lorg/restlet/data/ChallengeScheme;

    .line 59
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_AWS_QUERY"

    const-string v3, "AWS_QUERY"

    const-string v4, "Amazon Query String authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AWS_QUERY:Lorg/restlet/data/ChallengeScheme;

    .line 69
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_AZURE_SHAREDKEY"

    const-string v3, "SharedKey"

    const-string v4, "Microsoft Azure Shared Key authorization (authentication)"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY:Lorg/restlet/data/ChallengeScheme;

    .line 80
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_AZURE_SHAREDKEY_LITE"

    const-string v3, "SharedKeyLite"

    const-string v4, "Microsoft Azure Shared Key lite authorization (authentication)"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY_LITE:Lorg/restlet/data/ChallengeScheme;

    .line 85
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_BASIC"

    const-string v3, "Basic"

    const-string v4, "Basic HTTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_BASIC:Lorg/restlet/data/ChallengeScheme;

    .line 89
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_Cookie"

    const-string v3, "Cookie"

    const-string v4, "Cookie HTTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_COOKIE:Lorg/restlet/data/ChallengeScheme;

    .line 93
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_DIGEST"

    const-string v3, "Digest"

    const-string v4, "Digest HTTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    .line 97
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_NTLM"

    const-string v3, "NTLM"

    const-string v4, "Microsoft NTLM HTTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_NTLM:Lorg/restlet/data/ChallengeScheme;

    .line 101
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "HTTP_OAuth"

    const-string v3, "OAuth"

    const-string v4, "Open protocol for API authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_OAUTH:Lorg/restlet/data/ChallengeScheme;

    .line 105
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "POP_BASIC"

    const-string v3, "Basic"

    const-string v4, "Basic POP authentication (USER/PASS commands)"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->POP_BASIC:Lorg/restlet/data/ChallengeScheme;

    .line 110
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "POP_DIGEST"

    const-string v3, "Digest"

    const-string v4, "Digest POP authentication (APOP command)"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->POP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    .line 117
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "SDC"

    const-string v3, "SDC"

    const-string v4, "Secure Data Connector authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->SDC:Lorg/restlet/data/ChallengeScheme;

    .line 121
    new-instance v1, Lorg/restlet/data/ChallengeScheme;

    const-string v2, "SMTP_PLAIN"

    const-string v3, "PLAIN"

    const-string v4, "Plain SMTP authentication"

    invoke-direct {v1, v2, v3, v4}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->SMTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 127
    .local v0, "schemes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/restlet/data/ChallengeScheme;>;"
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->CUSTOM:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->CUSTOM:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->FTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->FTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AWS_S3:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_AWS_S3:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY_LITE:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_AZURE_SHAREDKEY_LITE:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_BASIC:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_BASIC:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_COOKIE:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_COOKIE:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_NTLM:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_NTLM:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->HTTP_OAUTH:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->HTTP_OAUTH:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->POP_BASIC:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->POP_BASIC:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->POP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->POP_DIGEST:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->SDC:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->SDC:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->SMTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    invoke-virtual {v1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lorg/restlet/data/ChallengeScheme;->SMTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    sput-object v1, Lorg/restlet/data/ChallengeScheme;->SCHEMES:Ljava/util/Map;

    .line 145
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "technicalName"    # Ljava/lang/String;

    .prologue
    .line 188
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "technicalName"    # Ljava/lang/String;
    .param p3, "description"    # Ljava/lang/String;

    .prologue
    .line 202
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p1, p0, Lorg/restlet/data/ChallengeScheme;->name:Ljava/lang/String;

    .line 204
    iput-object p3, p0, Lorg/restlet/data/ChallengeScheme;->description:Ljava/lang/String;

    .line 205
    iput-object p2, p0, Lorg/restlet/data/ChallengeScheme;->technicalName:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private setTechnicalName(Ljava/lang/String;)V
    .locals 0
    .param p1, "technicalName"    # Ljava/lang/String;

    .prologue
    .line 257
    iput-object p1, p0, Lorg/restlet/data/ChallengeScheme;->technicalName:Ljava/lang/String;

    .line 258
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/restlet/data/ChallengeScheme;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 156
    if-nez p0, :cond_0

    .line 157
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ChallengeScheme.valueOf(name) name must not be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 161
    :cond_0
    sget-object v1, Lorg/restlet/data/ChallengeScheme;->SCHEMES:Ljava/util/Map;

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/ChallengeScheme;

    .line 163
    .local v0, "result":Lorg/restlet/data/ChallengeScheme;
    if-nez v0, :cond_1

    .line 164
    new-instance v0, Lorg/restlet/data/ChallengeScheme;

    .end local v0    # "result":Lorg/restlet/data/ChallengeScheme;
    invoke-direct {v0, p0, v3, v3}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .restart local v0    # "result":Lorg/restlet/data/ChallengeScheme;
    :cond_1
    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    .line 211
    instance-of v0, p1, Lorg/restlet/data/ChallengeScheme;

    if-eqz v0, :cond_0

    check-cast p1, Lorg/restlet/data/ChallengeScheme;

    .end local p1    # "object":Ljava/lang/Object;
    invoke-virtual {p1}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/restlet/data/ChallengeScheme;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lorg/restlet/data/ChallengeScheme;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTechnicalName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lorg/restlet/data/ChallengeScheme;->technicalName:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 246
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 267
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeScheme;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

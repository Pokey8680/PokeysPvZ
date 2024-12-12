.class public abstract Lorg/restlet/data/ChallengeMessage;
.super Ljava/lang/Object;
.source "ChallengeMessage.java"


# static fields
.field public static final QUALITY_AUTHENTICATION:Ljava/lang/String; = "auth"

.field public static final QUALITY_AUTHENTICATION_INTEGRITY:Ljava/lang/String; = "auth-int"


# instance fields
.field private volatile digestAlgorithm:Ljava/lang/String;

.field private volatile opaque:Ljava/lang/String;

.field private volatile parameters:Lorg/restlet/util/Series;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation
.end field

.field private volatile rawValue:Ljava/lang/String;

.field private volatile realm:Ljava/lang/String;

.field private volatile scheme:Lorg/restlet/data/ChallengeScheme;

.field private volatile serverNonce:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;

    .prologue
    const/4 v0, 0x0

    .line 84
    invoke-direct {p0, p1, v0, v0}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "realm"    # Ljava/lang/String;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;)V
    .locals 7
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "realm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v5, 0x0

    .line 123
    const-string v4, "MD5"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v6, v5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .param p2, "realm"    # Ljava/lang/String;
    .param p4, "digestAlgorithm"    # Ljava/lang/String;
    .param p5, "opaque"    # Ljava/lang/String;
    .param p6, "serverNonce"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 146
    .local p3, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 147
    iput-object p3, p0, Lorg/restlet/data/ChallengeMessage;->parameters:Lorg/restlet/util/Series;

    .line 148
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->scheme:Lorg/restlet/data/ChallengeScheme;

    .line 149
    iput-object p6, p0, Lorg/restlet/data/ChallengeMessage;->serverNonce:Ljava/lang/String;

    .line 150
    iput-object p2, p0, Lorg/restlet/data/ChallengeMessage;->realm:Ljava/lang/String;

    .line 151
    iput-object p5, p0, Lorg/restlet/data/ChallengeMessage;->opaque:Ljava/lang/String;

    .line 152
    iput-object p4, p0, Lorg/restlet/data/ChallengeMessage;->digestAlgorithm:Ljava/lang/String;

    .line 153
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/ChallengeScheme;Lorg/restlet/util/Series;)V
    .locals 1
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeScheme;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    const/4 v0, 0x0

    .line 96
    invoke-direct {p0, p1, v0, v0}, Lorg/restlet/data/ChallengeMessage;-><init>(Lorg/restlet/data/ChallengeScheme;Ljava/lang/String;Lorg/restlet/util/Series;)V

    .line 97
    return-void
.end method


# virtual methods
.method public getDigestAlgorithm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->digestAlgorithm:Ljava/lang/String;

    return-object v0
.end method

.method public getOpaque()Ljava/lang/String;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->opaque:Ljava/lang/String;

    return-object v0
.end method

.method public getParameters()Lorg/restlet/util/Series;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;"
        }
    .end annotation

    .prologue
    .line 182
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->parameters:Lorg/restlet/util/Series;

    if-nez v0, :cond_0

    .line 183
    new-instance v0, Lorg/restlet/util/Series;

    const-class v1, Lorg/restlet/data/Parameter;

    invoke-direct {v0, v1}, Lorg/restlet/util/Series;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lorg/restlet/data/ChallengeMessage;->parameters:Lorg/restlet/util/Series;

    .line 186
    :cond_0
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->parameters:Lorg/restlet/util/Series;

    return-object v0
.end method

.method public getRawValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->rawValue:Ljava/lang/String;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public getScheme()Lorg/restlet/data/ChallengeScheme;
    .locals 1

    .prologue
    .line 213
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->scheme:Lorg/restlet/data/ChallengeScheme;

    return-object v0
.end method

.method public getServerNonce()Ljava/lang/String;
    .locals 1

    .prologue
    .line 222
    iget-object v0, p0, Lorg/restlet/data/ChallengeMessage;->serverNonce:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeMessage;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeMessage;->getRealm()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeMessage;->getParameters()Lorg/restlet/util/Series;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/restlet/engine/util/SystemUtils;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setDigestAlgorithm(Ljava/lang/String;)V
    .locals 0
    .param p1, "digestAlgorithm"    # Ljava/lang/String;

    .prologue
    .line 239
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->digestAlgorithm:Ljava/lang/String;

    .line 240
    return-void
.end method

.method public setOpaque(Ljava/lang/String;)V
    .locals 0
    .param p1, "opaque"    # Ljava/lang/String;

    .prologue
    .line 250
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->opaque:Ljava/lang/String;

    .line 251
    return-void
.end method

.method public setParameters(Lorg/restlet/util/Series;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/data/Parameter;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 260
    .local p1, "parameters":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/data/Parameter;>;"
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->parameters:Lorg/restlet/util/Series;

    .line 261
    return-void
.end method

.method public setRawValue(Ljava/lang/String;)V
    .locals 0
    .param p1, "rawValue"    # Ljava/lang/String;

    .prologue
    .line 270
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->rawValue:Ljava/lang/String;

    .line 271
    return-void
.end method

.method public setRealm(Ljava/lang/String;)V
    .locals 0
    .param p1, "realm"    # Ljava/lang/String;

    .prologue
    .line 280
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->realm:Ljava/lang/String;

    .line 281
    return-void
.end method

.method public setScheme(Lorg/restlet/data/ChallengeScheme;)V
    .locals 0
    .param p1, "scheme"    # Lorg/restlet/data/ChallengeScheme;

    .prologue
    .line 290
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->scheme:Lorg/restlet/data/ChallengeScheme;

    .line 291
    return-void
.end method

.method public setServerNonce(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverNonce"    # Ljava/lang/String;

    .prologue
    .line 300
    iput-object p1, p0, Lorg/restlet/data/ChallengeMessage;->serverNonce:Ljava/lang/String;

    .line 301
    return-void
.end method

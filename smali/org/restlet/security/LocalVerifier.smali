.class public abstract Lorg/restlet/security/LocalVerifier;
.super Lorg/restlet/security/SecretVerifier;
.source "LocalVerifier.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lorg/restlet/security/SecretVerifier;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract getLocalSecret(Ljava/lang/String;)[C
.end method

.method public verify(Ljava/lang/String;[C)I
    .locals 1
    .param p1, "identifier"    # Ljava/lang/String;
    .param p2, "secret"    # [C

    .prologue
    .line 56
    invoke-virtual {p0, p1}, Lorg/restlet/security/LocalVerifier;->getLocalSecret(Ljava/lang/String;)[C

    move-result-object v0

    invoke-static {p2, v0}, Lorg/restlet/security/LocalVerifier;->compare([C[C)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.class Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;
.super Ljava/lang/Object;
.source "DefaultVariantProvider.java"

# interfaces
.implements Lorg/codegist/crest/security/oauth/v1/VariantProvider;


# static fields
.field static final INSTANCE:Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;

.field private static final SECONDS:J = 0x3e8L


# instance fields
.field private final rdm:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 28
    new-instance v0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;

    new-instance v1, Ljava/security/SecureRandom;

    invoke-direct {v1}, Ljava/security/SecureRandom;-><init>()V

    invoke-direct {v0, v1}, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;-><init>(Ljava/util/Random;)V

    sput-object v0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;->INSTANCE:Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;

    return-void
.end method

.method constructor <init>(Ljava/util/Random;)V
    .locals 0
    .param p1, "rdm"    # Ljava/util/Random;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;->rdm:Ljava/util/Random;

    .line 35
    return-void
.end method


# virtual methods
.method public nonce()Ljava/lang/String;
    .locals 4

    .prologue
    .line 42
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lorg/codegist/crest/security/oauth/v1/DefaultVariantProvider;->rdm:Ljava/util/Random;

    invoke-virtual {v2}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    add-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public timestamp()Ljava/lang/String;
    .locals 4

    .prologue
    .line 38
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

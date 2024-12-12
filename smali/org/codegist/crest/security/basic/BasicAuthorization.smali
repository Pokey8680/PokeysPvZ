.class public Lorg/codegist/crest/security/basic/BasicAuthorization;
.super Ljava/lang/Object;
.source "BasicAuthorization.java"

# interfaces
.implements Lorg/codegist/crest/security/Authorization;


# static fields
.field private static final UTF8:Ljava/nio/charset/Charset;


# instance fields
.field private final token:Lorg/codegist/crest/security/AuthorizationToken;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const-string v0, "UTF-8"

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    sput-object v0, Lorg/codegist/crest/security/basic/BasicAuthorization;->UTF8:Ljava/nio/charset/Charset;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    new-instance v0, Lorg/codegist/crest/security/AuthorizationToken;

    const-string v1, "Basic"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lorg/codegist/crest/security/basic/BasicAuthorization;->UTF8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v2}, Lorg/codegist/common/codec/Base64;->encodeToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lorg/codegist/crest/security/AuthorizationToken;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/codegist/crest/security/basic/BasicAuthorization;->token:Lorg/codegist/crest/security/AuthorizationToken;

    .line 47
    return-void
.end method


# virtual methods
.method public varargs authorize(Lorg/codegist/crest/config/MethodType;Ljava/lang/String;[Lorg/codegist/crest/param/EncodedPair;)Lorg/codegist/crest/security/AuthorizationToken;
    .locals 1
    .param p1, "methodType"    # Lorg/codegist/crest/config/MethodType;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "parameters"    # [Lorg/codegist/crest/param/EncodedPair;

    .prologue
    .line 53
    iget-object v0, p0, Lorg/codegist/crest/security/basic/BasicAuthorization;->token:Lorg/codegist/crest/security/AuthorizationToken;

    return-object v0
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

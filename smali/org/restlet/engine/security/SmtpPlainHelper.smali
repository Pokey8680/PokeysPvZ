.class public Lorg/restlet/engine/security/SmtpPlainHelper;
.super Lorg/restlet/engine/security/AuthenticatorHelper;
.source "SmtpPlainHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 59
    sget-object v0, Lorg/restlet/data/ChallengeScheme;->SMTP_PLAIN:Lorg/restlet/data/ChallengeScheme;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lorg/restlet/engine/security/AuthenticatorHelper;-><init>(Lorg/restlet/data/ChallengeScheme;ZZ)V

    .line 60
    return-void
.end method


# virtual methods
.method public formatResponse(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    .locals 5
    .param p1, "cw"    # Lorg/restlet/engine/header/ChallengeWriter;
    .param p2, "challenge"    # Lorg/restlet/data/ChallengeResponse;
    .param p3, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/ChallengeWriter;",
            "Lorg/restlet/data/ChallengeResponse;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p4, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :try_start_0
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 68
    .local v0, "credentials":Ljava/io/CharArrayWriter;
    const-string v2, "^@"

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 69
    invoke-virtual {p2}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 70
    const-string v2, "^@"

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write([C)V

    .line 72
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v2

    const-string v3, "US-ASCII"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/restlet/engine/util/Base64;->encode([CLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 81
    return-void

    .line 74
    .end local v0    # "credentials":Ljava/io/CharArrayWriter;
    :catch_0
    move-exception v1

    .line 75
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported encoding, unable to encode credentials"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 77
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v1

    .line 78
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception, unable to encode credentials"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

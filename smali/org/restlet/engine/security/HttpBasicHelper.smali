.class public Lorg/restlet/engine/security/HttpBasicHelper;
.super Lorg/restlet/engine/security/AuthenticatorHelper;
.source "HttpBasicHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 65
    sget-object v0, Lorg/restlet/data/ChallengeScheme;->HTTP_BASIC:Lorg/restlet/data/ChallengeScheme;

    invoke-direct {p0, v0, v1, v1}, Lorg/restlet/engine/security/AuthenticatorHelper;-><init>(Lorg/restlet/data/ChallengeScheme;ZZ)V

    .line 66
    return-void
.end method


# virtual methods
.method public formatRequest(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    .locals 2
    .param p1, "cw"    # Lorg/restlet/engine/header/ChallengeWriter;
    .param p2, "challenge"    # Lorg/restlet/data/ChallengeRequest;
    .param p3, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/engine/header/ChallengeWriter;",
            "Lorg/restlet/data/ChallengeRequest;",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 71
    .local p4, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p2}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 72
    const-string v0, "realm"

    invoke-virtual {p2}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->appendQuotedChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 78
    :goto_0
    return-void

    .line 74
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/engine/security/HttpBasicHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    const-string v1, "The realm directive is required for all authentication schemes that issue a challenge."

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

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
    .line 84
    .local p4, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    if-nez p2, :cond_0

    .line 85
    :try_start_0
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "No challenge provided, unable to encode credentials"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 95
    :catch_0
    move-exception v1

    .line 96
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unsupported encoding, unable to encode credentials"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 88
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/CharArrayWriter;

    invoke-direct {v0}, Ljava/io/CharArrayWriter;-><init>()V

    .line 89
    .local v0, "credentials":Ljava/io/CharArrayWriter;
    invoke-virtual {p2}, Lorg/restlet/data/ChallengeResponse;->getIdentifier()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 90
    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Lorg/restlet/data/ChallengeResponse;->getSecret()[C

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/CharArrayWriter;->write([C)V

    .line 92
    invoke-virtual {v0}, Ljava/io/CharArrayWriter;->toCharArray()[C

    move-result-object v2

    const-string v3, "ISO-8859-1"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lorg/restlet/engine/util/Base64;->encode([CLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 102
    return-void

    .line 98
    .end local v0    # "credentials":Ljava/io/CharArrayWriter;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Unexpected exception, unable to encode credentials"

    invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public parseRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    .locals 6
    .param p1, "challenge"    # Lorg/restlet/data/ChallengeRequest;
    .param p2, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeRequest;",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 107
    .local p3, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    invoke-virtual {p1}, Lorg/restlet/data/ChallengeRequest;->getRawValue()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 108
    new-instance v1, Lorg/restlet/engine/header/HeaderReader;

    invoke-virtual {p1}, Lorg/restlet/data/ChallengeRequest;->getRawValue()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 112
    .local v1, "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    :try_start_0
    invoke-virtual {v1}, Lorg/restlet/engine/header/HeaderReader;->readParameter()Lorg/restlet/data/Parameter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    .line 114
    .local v2, "param":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v2, :cond_1

    .line 116
    :try_start_1
    const-string v3, "realm"

    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 117
    invoke-virtual {v2}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lorg/restlet/data/ChallengeRequest;->setRealm(Ljava/lang/String;)V

    .line 122
    :goto_1
    invoke-virtual {v1}, Lorg/restlet/engine/header/HeaderReader;->skipValueSeparator()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 123
    invoke-virtual {v1}, Lorg/restlet/engine/header/HeaderReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v2

    goto :goto_0

    .line 119
    :cond_0
    invoke-virtual {p1}, Lorg/restlet/data/ChallengeRequest;->getParameters()Lorg/restlet/util/Series;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/restlet/util/Series;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to parse the challenge request header parameter"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 134
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "param":Lorg/restlet/data/Parameter;
    :catch_1
    move-exception v0

    .line 135
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "Unable to parse the challenge request header parameter"

    invoke-virtual {v3, v4, v5, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    :cond_1
    return-void

    .line 125
    .restart local v1    # "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Ljava/lang/Object;>;"
    .restart local v2    # "param":Lorg/restlet/data/Parameter;
    :cond_2
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public parseResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    .locals 7
    .param p1, "challenge"    # Lorg/restlet/data/ChallengeResponse;
    .param p2, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeResponse;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 147
    .local p3, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    :try_start_0
    invoke-virtual {p1}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lorg/restlet/engine/util/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v1

    .line 149
    .local v1, "credentialsEncoded":[B
    if-nez v1, :cond_0

    .line 150
    invoke-virtual {p0}, Lorg/restlet/engine/security/HttpBasicHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Cannot decode credentials: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 155
    :cond_0
    new-instance v0, Ljava/lang/String;

    const-string v4, "ISO-8859-1"

    invoke-direct {v0, v1, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 156
    .local v0, "credentials":Ljava/lang/String;
    const/16 v4, 0x3a

    invoke-virtual {v0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v3

    .line 158
    .local v3, "separator":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 160
    invoke-virtual {p0}, Lorg/restlet/engine/security/HttpBasicHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid credentials given by client with IP: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Lorg/restlet/Request;->getClientInfo()Lorg/restlet/data/ClientInfo;

    move-result-object v4

    invoke-virtual {v4}, Lorg/restlet/data/ClientInfo;->getAddress()Ljava/lang/String;

    move-result-object v4

    :goto_0
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 175
    .end local v0    # "credentials":Ljava/lang/String;
    .end local v1    # "credentialsEncoded":[B
    .end local v3    # "separator":I
    :goto_1
    return-void

    .line 160
    .restart local v0    # "credentials":Ljava/lang/String;
    .restart local v1    # "credentialsEncoded":[B
    .restart local v3    # "separator":I
    :cond_1
    const-string v4, "?"

    goto :goto_0

    .line 165
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/restlet/data/ChallengeResponse;->setIdentifier(Ljava/lang/String;)V

    .line 166
    add-int/lit8 v4, v3, 0x1

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Lorg/restlet/data/ChallengeResponse;->setSecret(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 168
    .end local v0    # "credentials":Ljava/lang/String;
    .end local v1    # "credentialsEncoded":[B
    .end local v3    # "separator":I
    :catch_0
    move-exception v2

    .line 169
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    invoke-virtual {p0}, Lorg/restlet/engine/security/HttpBasicHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Unsupported HTTP Basic encoding error"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 171
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :catch_1
    move-exception v2

    .line 172
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {p0}, Lorg/restlet/engine/security/HttpBasicHelper;->getLogger()Ljava/util/logging/Logger;

    move-result-object v4

    sget-object v5, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v6, "Unable to decode the HTTP Basic credential"

    invoke-virtual {v4, v5, v6, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

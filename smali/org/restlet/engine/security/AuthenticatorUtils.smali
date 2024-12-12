.class public Lorg/restlet/engine/security/AuthenticatorUtils;
.super Ljava/lang/Object;
.source "AuthenticatorUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 497
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 498
    return-void
.end method

.method public static varargs anyNull([Ljava/lang/Object;)Z
    .locals 5
    .param p0, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 74
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v3, v0, v1

    .line 75
    .local v3, "o":Ljava/lang/Object;
    if-nez v3, :cond_0

    .line 76
    const/4 v4, 0x1

    .line 79
    .end local v3    # "o":Ljava/lang/Object;
    :goto_1
    return v4

    .line 74
    .restart local v3    # "o":Ljava/lang/Object;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 79
    .end local v3    # "o":Ljava/lang/Object;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public static formatAuthenticationInfo(Lorg/restlet/data/AuthenticationInfo;)Ljava/lang/String;
    .locals 4
    .param p0, "info"    # Lorg/restlet/data/AuthenticationInfo;

    .prologue
    .line 92
    new-instance v0, Lorg/restlet/engine/header/ChallengeWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/ChallengeWriter;-><init>()V

    .line 93
    .local v0, "cw":Lorg/restlet/engine/header/ChallengeWriter;
    const/4 v1, 0x1

    .line 95
    .local v1, "firstParameter":Z
    if-eqz p0, :cond_3

    .line 96
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 98
    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->setFirstChallengeParameter(Z)V

    .line 99
    const-string v2, "nextnonce"

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNextServerNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/restlet/engine/header/ChallengeWriter;->appendQuotedChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 101
    const/4 v1, 0x0

    .line 104
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 105
    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->setFirstChallengeParameter(Z)V

    .line 106
    const-string v2, "qop"

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getQuality()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 107
    const/4 v1, 0x0

    .line 109
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNonceCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 110
    const-string v2, "nc"

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getNonceCount()I

    move-result v3

    invoke-static {v3}, Lorg/restlet/engine/security/AuthenticatorUtils;->formatNonceCount(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 115
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 117
    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->setFirstChallengeParameter(Z)V

    .line 118
    const-string v2, "rspauth"

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getResponseDigest()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/restlet/engine/header/ChallengeWriter;->appendQuotedChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 120
    const/4 v1, 0x0

    .line 123
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_3

    .line 125
    invoke-virtual {v0, v1}, Lorg/restlet/engine/header/ChallengeWriter;->setFirstChallengeParameter(Z)V

    .line 126
    const-string v2, "cnonce"

    invoke-virtual {p0}, Lorg/restlet/data/AuthenticationInfo;->getClientNonce()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lorg/restlet/engine/header/ChallengeWriter;->appendChallengeParameter(Ljava/lang/String;Ljava/lang/String;)Lorg/restlet/engine/header/ChallengeWriter;

    .line 127
    const/4 v1, 0x0

    .line 131
    :cond_3
    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method public static formatNonceCount(I)Ljava/lang/String;
    .locals 3
    .param p0, "nonceCount"    # I

    .prologue
    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, "result":Ljava/lang/StringBuilder;
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/16 v2, 0x8

    if-ge v1, v2, :cond_0

    .line 146
    const/4 v1, 0x0

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static formatRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)Ljava/lang/String;
    .locals 9
    .param p0, "challenge"    # Lorg/restlet/data/ChallengeRequest;
    .param p1, "response"    # Lorg/restlet/Response;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeRequest;",
            "Lorg/restlet/Response;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 169
    .local p2, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v4, 0x0

    .line 171
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 172
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "No challenge response to format."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 213
    :goto_0
    return-object v4

    .line 174
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    if-nez v5, :cond_1

    .line 175
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "A challenge response must have a scheme defined."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 177
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeScheme;->getTechnicalName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 178
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "A challenge scheme must have a technical name defined."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 181
    :cond_2
    new-instance v0, Lorg/restlet/engine/header/ChallengeWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/ChallengeWriter;-><init>()V

    .line 182
    .local v0, "cw":Lorg/restlet/engine/header/ChallengeWriter;
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeScheme;->getTechnicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/header/HeaderWriter;->appendSpace()Lorg/restlet/engine/header/HeaderWriter;

    .line 183
    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 185
    .local v1, "cwInitialLength":I
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getRawValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 186
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getRawValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 209
    :goto_1
    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v1, :cond_5

    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    goto :goto_0

    .line 188
    :cond_3
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/restlet/engine/Engine;->findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;

    move-result-object v3

    .line 191
    .local v3, "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    if-eqz v3, :cond_4

    .line 193
    :try_start_0
    invoke-virtual {v3, v0, p0, p1, p2}, Lorg/restlet/engine/security/AuthenticatorHelper;->formatRequest(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 195
    :catch_0
    move-exception v2

    .line 196
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to format the challenge request: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 202
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    const-string v4, "?"

    .line 203
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Challenge scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported by the Restlet engine."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 209
    .end local v3    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static formatResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)Ljava/lang/String;
    .locals 9
    .param p0, "challenge"    # Lorg/restlet/data/ChallengeResponse;
    .param p1, "request"    # Lorg/restlet/Request;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/data/ChallengeResponse;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 235
    .local p2, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v4, 0x0

    .line 237
    .local v4, "result":Ljava/lang/String;
    if-nez p0, :cond_0

    .line 238
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "No challenge response to format."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 278
    :goto_0
    return-object v4

    .line 240
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    if-nez v5, :cond_1

    .line 241
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "A challenge response must have a scheme defined."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    :cond_1
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeScheme;->getTechnicalName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 244
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    const-string v6, "A challenge scheme must have a technical name defined."

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 247
    :cond_2
    new-instance v0, Lorg/restlet/engine/header/ChallengeWriter;

    invoke-direct {v0}, Lorg/restlet/engine/header/ChallengeWriter;-><init>()V

    .line 248
    .local v0, "cw":Lorg/restlet/engine/header/ChallengeWriter;
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/data/ChallengeScheme;->getTechnicalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    move-result-object v5

    invoke-virtual {v5}, Lorg/restlet/engine/header/HeaderWriter;->appendSpace()Lorg/restlet/engine/header/HeaderWriter;

    .line 249
    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    .line 251
    .local v1, "cwInitialLength":I
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 252
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getRawValue()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lorg/restlet/engine/header/ChallengeWriter;->append(Ljava/lang/CharSequence;)Lorg/restlet/engine/header/HeaderWriter;

    .line 274
    :goto_1
    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->length()I

    move-result v5

    if-le v5, v1, :cond_5

    invoke-virtual {v0}, Lorg/restlet/engine/header/ChallengeWriter;->toString()Ljava/lang/String;

    move-result-object v4

    :goto_2
    goto :goto_0

    .line 254
    :cond_3
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v5

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Lorg/restlet/engine/Engine;->findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;

    move-result-object v3

    .line 257
    .local v3, "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    if-eqz v3, :cond_4

    .line 259
    :try_start_0
    invoke-virtual {v3, v0, p0, p1, p2}, Lorg/restlet/engine/security/AuthenticatorHelper;->formatResponse(Lorg/restlet/engine/header/ChallengeWriter;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 261
    :catch_0
    move-exception v2

    .line 262
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    sget-object v6, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to format the challenge response: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7, v2}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 268
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Challenge scheme "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not supported by the Restlet engine."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_1

    .line 274
    .end local v3    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_5
    const/4 v4, 0x0

    goto :goto_2
.end method

.method public static parseAuthenticationInfo(Ljava/lang/String;)Lorg/restlet/data/AuthenticationInfo;
    .locals 14
    .param p0, "header"    # Ljava/lang/String;

    .prologue
    .line 290
    const/4 v9, 0x0

    .line 291
    .local v9, "result":Lorg/restlet/data/AuthenticationInfo;
    new-instance v7, Lorg/restlet/engine/header/HeaderReader;

    invoke-direct {v7, p0}, Lorg/restlet/engine/header/HeaderReader;-><init>(Ljava/lang/String;)V

    .line 294
    .local v7, "hr":Lorg/restlet/engine/header/HeaderReader;, "Lorg/restlet/engine/header/HeaderReader<Lorg/restlet/data/Parameter;>;"
    const/4 v1, 0x0

    .line 295
    .local v1, "nextNonce":Ljava/lang/String;
    const/4 v4, 0x0

    .line 296
    .local v4, "qop":Ljava/lang/String;
    const/4 v5, 0x0

    .line 297
    .local v5, "responseAuth":Ljava/lang/String;
    const/4 v3, 0x0

    .line 298
    .local v3, "cnonce":Ljava/lang/String;
    const/4 v2, 0x0

    .line 299
    .local v2, "nonceCount":I
    :try_start_0
    invoke-virtual {v7}, Lorg/restlet/engine/header/HeaderReader;->readParameter()Lorg/restlet/data/Parameter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 301
    .local v8, "param":Lorg/restlet/data/Parameter;
    :goto_0
    if-eqz v8, :cond_6

    .line 303
    :try_start_1
    const-string v10, "nextnonce"

    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 304
    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 315
    :cond_0
    :goto_1
    invoke-virtual {v7}, Lorg/restlet/engine/header/HeaderReader;->skipValueSeparator()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 316
    invoke-virtual {v7}, Lorg/restlet/engine/header/HeaderReader;->readParameter()Lorg/restlet/data/Parameter;

    move-result-object v8

    goto :goto_0

    .line 305
    :cond_1
    const-string v10, "qop"

    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 306
    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 307
    :cond_2
    const-string v10, "rspauth"

    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 308
    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v5

    goto :goto_1

    .line 309
    :cond_3
    const-string v10, "cnonce"

    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 310
    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    .line 311
    :cond_4
    const-string v10, "nc"

    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 312
    invoke-virtual {v8}, Lorg/restlet/data/Parameter;->getValue()Ljava/lang/String;

    move-result-object v10

    const/16 v11, 0x10

    invoke-static {v10, v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    goto :goto_1

    .line 318
    :cond_5
    const/4 v8, 0x0

    goto :goto_0

    .line 320
    :catch_0
    move-exception v6

    .line 321
    .local v6, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v12, "Unable to parse the authentication info header parameter"

    invoke-virtual {v10, v11, v12, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 330
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v8    # "param":Lorg/restlet/data/Parameter;
    :catch_1
    move-exception v6

    .line 331
    .local v6, "e":Ljava/io/IOException;
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v10

    sget-object v11, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unable to parse the authentication info header: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v11, v12, v6}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v9

    .line 337
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "result":Lorg/restlet/data/AuthenticationInfo;
    .local v0, "result":Lorg/restlet/data/AuthenticationInfo;
    :goto_2
    return-object v0

    .line 328
    .end local v0    # "result":Lorg/restlet/data/AuthenticationInfo;
    .restart local v8    # "param":Lorg/restlet/data/Parameter;
    .restart local v9    # "result":Lorg/restlet/data/AuthenticationInfo;
    :cond_6
    :try_start_3
    new-instance v0, Lorg/restlet/data/AuthenticationInfo;

    invoke-direct/range {v0 .. v5}, Lorg/restlet/data/AuthenticationInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .end local v9    # "result":Lorg/restlet/data/AuthenticationInfo;
    .restart local v0    # "result":Lorg/restlet/data/AuthenticationInfo;
    goto :goto_2
.end method

.method public static parseRequest(Lorg/restlet/Response;Ljava/lang/String;Lorg/restlet/util/Series;)Ljava/util/List;
    .locals 8
    .param p0, "response"    # Lorg/restlet/Response;
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Response;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/ChallengeRequest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 352
    .local p2, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 354
    .local v3, "result":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/ChallengeRequest;>;"
    if-eqz p1, :cond_1

    .line 355
    new-instance v4, Lorg/restlet/engine/header/ChallengeRequestReader;

    invoke-direct {v4, p1}, Lorg/restlet/engine/header/ChallengeRequestReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Lorg/restlet/engine/header/ChallengeRequestReader;->readValues()Ljava/util/List;

    move-result-object v3

    .line 356
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/ChallengeRequest;

    .line 359
    .local v0, "cr":Lorg/restlet/data/ChallengeRequest;
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v4

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {v4, v5, v6, v7}, Lorg/restlet/engine/Engine;->findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;

    move-result-object v1

    .line 362
    .local v1, "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    if-eqz v1, :cond_0

    .line 363
    invoke-virtual {v1, v0, p0, p2}, Lorg/restlet/engine/security/AuthenticatorHelper;->parseRequest(Lorg/restlet/data/ChallengeRequest;Lorg/restlet/Response;Lorg/restlet/util/Series;)V

    goto :goto_0

    .line 365
    :cond_0
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Couldn\'t find any helper support the "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " challenge scheme."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0

    .line 372
    .end local v0    # "cr":Lorg/restlet/data/ChallengeRequest;
    .end local v1    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    return-object v3
.end method

.method public static parseResponse(Lorg/restlet/Request;Ljava/lang/String;Lorg/restlet/util/Series;)Lorg/restlet/data/ChallengeResponse;
    .locals 9
    .param p0, "request"    # Lorg/restlet/Request;
    .param p1, "header"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/Request;",
            "Ljava/lang/String;",
            "Lorg/restlet/util/Series",
            "<",
            "Lorg/restlet/engine/header/Header;",
            ">;)",
            "Lorg/restlet/data/ChallengeResponse;"
        }
    .end annotation

    .prologue
    .local p2, "httpHeaders":Lorg/restlet/util/Series;, "Lorg/restlet/util/Series<Lorg/restlet/engine/header/Header;>;"
    const/4 v8, 0x0

    .line 389
    const/4 v2, 0x0

    .line 391
    .local v2, "result":Lorg/restlet/data/ChallengeResponse;
    if-eqz p1, :cond_0

    .line 392
    const/16 v5, 0x20

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    .line 394
    .local v4, "space":I
    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 395
    invoke-virtual {p1, v8, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 396
    .local v3, "scheme":Ljava/lang/String;
    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 398
    .local v1, "rawValue":Ljava/lang/String;
    new-instance v2, Lorg/restlet/data/ChallengeResponse;

    .end local v2    # "result":Lorg/restlet/data/ChallengeResponse;
    new-instance v5, Lorg/restlet/data/ChallengeScheme;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "HTTP_"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lorg/restlet/data/ChallengeScheme;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v2, v5}, Lorg/restlet/data/ChallengeResponse;-><init>(Lorg/restlet/data/ChallengeScheme;)V

    .line 400
    .restart local v2    # "result":Lorg/restlet/data/ChallengeResponse;
    invoke-virtual {v2, v1}, Lorg/restlet/data/ChallengeResponse;->setRawValue(Ljava/lang/String;)V

    .line 404
    .end local v1    # "rawValue":Ljava/lang/String;
    .end local v3    # "scheme":Ljava/lang/String;
    .end local v4    # "space":I
    :cond_0
    if-eqz v2, :cond_1

    .line 406
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v5

    invoke-virtual {v2}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    const/4 v7, 0x1

    invoke-virtual {v5, v6, v7, v8}, Lorg/restlet/engine/Engine;->findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;

    move-result-object v0

    .line 409
    .local v0, "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    if-eqz v0, :cond_2

    .line 410
    invoke-virtual {v0, v2, p0, p2}, Lorg/restlet/engine/security/AuthenticatorHelper;->parseResponse(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/util/Series;)V

    .line 418
    .end local v0    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_1
    :goto_0
    return-object v2

    .line 412
    .restart local v0    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_2
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Couldn\'t find any helper support the "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " challenge scheme."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static update(Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;Lorg/restlet/Response;)V
    .locals 7
    .param p0, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "response"    # Lorg/restlet/Response;

    .prologue
    .line 435
    const/4 v1, 0x0

    .line 437
    .local v1, "challengeRequest":Lorg/restlet/data/ChallengeRequest;
    invoke-virtual {p2}, Lorg/restlet/Response;->getChallengeRequests()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/ChallengeRequest;

    .line 438
    .local v0, "c":Lorg/restlet/data/ChallengeRequest;
    invoke-virtual {p0}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v5

    invoke-virtual {v0}, Lorg/restlet/data/ChallengeRequest;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v6

    invoke-virtual {v5, v6}, Lorg/restlet/data/ChallengeScheme;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 439
    move-object v1, v0

    .line 444
    .end local v0    # "c":Lorg/restlet/data/ChallengeRequest;
    :cond_1
    const/4 v4, 0x0

    .line 445
    .local v4, "realm":Ljava/lang/String;
    const/4 v3, 0x0

    .line 447
    .local v3, "nonce":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 448
    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getRealm()Ljava/lang/String;

    move-result-object v4

    .line 449
    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getServerNonce()Ljava/lang/String;

    move-result-object v3

    .line 450
    invoke-virtual {v1}, Lorg/restlet/data/ChallengeRequest;->getOpaque()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lorg/restlet/data/ChallengeResponse;->setOpaque(Ljava/lang/String;)V

    .line 453
    :cond_2
    invoke-virtual {p0, v4}, Lorg/restlet/data/ChallengeResponse;->setRealm(Ljava/lang/String;)V

    .line 454
    invoke-virtual {p0, v3}, Lorg/restlet/data/ChallengeResponse;->setServerNonce(Ljava/lang/String;)V

    .line 456
    new-instance v5, Lorg/restlet/data/Reference;

    invoke-virtual {p1}, Lorg/restlet/Request;->getResourceRef()Lorg/restlet/data/Reference;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/data/Reference;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/restlet/data/Reference;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lorg/restlet/data/ChallengeResponse;->setDigestRef(Lorg/restlet/data/Reference;)V

    .line 458
    return-void
.end method

.method public static updateReference(Lorg/restlet/data/Reference;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;)Lorg/restlet/data/Reference;
    .locals 5
    .param p0, "resourceRef"    # Lorg/restlet/data/Reference;
    .param p1, "challengeResponse"    # Lorg/restlet/data/ChallengeResponse;
    .param p2, "request"    # Lorg/restlet/Request;

    .prologue
    .line 476
    if-eqz p1, :cond_0

    .line 477
    invoke-static {}, Lorg/restlet/engine/Engine;->getInstance()Lorg/restlet/engine/Engine;

    move-result-object v1

    invoke-virtual {p1}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lorg/restlet/engine/Engine;->findHelper(Lorg/restlet/data/ChallengeScheme;ZZ)Lorg/restlet/engine/security/AuthenticatorHelper;

    move-result-object v0

    .line 480
    .local v0, "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    if-eqz v0, :cond_1

    .line 481
    invoke-virtual {v0, p0, p1, p2}, Lorg/restlet/engine/security/AuthenticatorHelper;->updateReference(Lorg/restlet/data/Reference;Lorg/restlet/data/ChallengeResponse;Lorg/restlet/Request;)Lorg/restlet/data/Reference;

    move-result-object p0

    .line 490
    .end local v0    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_0
    :goto_0
    return-object p0

    .line 484
    .restart local v0    # "helper":Lorg/restlet/engine/security/AuthenticatorHelper;
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Challenge scheme "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lorg/restlet/data/ChallengeResponse;->getScheme()Lorg/restlet/data/ChallengeScheme;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not supported by the Restlet engine."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_0
.end method

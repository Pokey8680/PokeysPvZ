.class public final Lorg/restlet/data/ClientInfo;
.super Ljava/lang/Object;
.source "ClientInfo.java"


# static fields
.field private static volatile userAgentTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile acceptedCharacterSets:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile acceptedEncodings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile acceptedLanguages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Language;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile acceptedMediaTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile address:Ljava/lang/String;

.field private volatile agent:Ljava/lang/String;

.field private volatile agentAttributes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile agentMainProduct:Lorg/restlet/data/Product;

.field private volatile agentProducts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Product;",
            ">;"
        }
    .end annotation
.end field

.field private volatile authenticated:Z

.field private volatile certificates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field

.field private volatile cipherSuite:Ljava/lang/String;

.field private volatile expectations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Expectation;",
            ">;"
        }
    .end annotation
.end field

.field private volatile forwardedAddresses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile from:Ljava/lang/String;

.field private volatile port:I

.field private volatile principals:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation
.end field

.field private volatile roles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation
.end field

.field private volatile user:Lorg/restlet/security/User;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 143
    const/4 v0, 0x0

    sput-object v0, Lorg/restlet/data/ClientInfo;->userAgentTemplates:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 296
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 297
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->address:Ljava/lang/String;

    .line 298
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->agent:Ljava/lang/String;

    .line 299
    const/4 v0, -0x1

    iput v0, p0, Lorg/restlet/data/ClientInfo;->port:I

    .line 300
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedCharacterSets:Ljava/util/List;

    .line 301
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedEncodings:Ljava/util/List;

    .line 302
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedLanguages:Ljava/util/List;

    .line 303
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedMediaTypes:Ljava/util/List;

    .line 304
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    .line 305
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->from:Ljava/lang/String;

    .line 306
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->agentProducts:Ljava/util/List;

    .line 307
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->principals:Ljava/util/List;

    .line 308
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->user:Lorg/restlet/security/User;

    .line 309
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->roles:Ljava/util/List;

    .line 310
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->expectations:Ljava/util/List;

    .line 311
    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 321
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 322
    if-eqz p1, :cond_0

    .line 323
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/representation/Variant;

    .line 324
    .local v1, "variant":Lorg/restlet/representation/Variant;
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v2

    new-instance v3, Lorg/restlet/data/Preference;

    invoke-virtual {v1}, Lorg/restlet/representation/Variant;->getMediaType()Lorg/restlet/data/MediaType;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 328
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "variant":Lorg/restlet/representation/Variant;
    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/restlet/data/MediaType;)V
    .locals 2
    .param p1, "mediaType"    # Lorg/restlet/data/MediaType;

    .prologue
    .line 336
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    invoke-direct {v1, p1}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 338
    return-void
.end method

.method public static getPreferredMetadata(Ljava/util/List;Ljava/util/List;)Lorg/restlet/data/Metadata;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/restlet/data/Metadata;",
            ">(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<TT;>;>;)TT;"
        }
    .end annotation

    .prologue
    .line 157
    .local p0, "supported":Ljava/util/List;, "Ljava/util/List<TT;>;"
    .local p1, "preferences":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<TT;>;>;"
    const/4 v5, 0x0

    .line 158
    .local v5, "result":Lorg/restlet/data/Metadata;, "TT;"
    const/4 v2, 0x0

    .line 160
    .local v2, "maxQuality":F
    if-eqz p0, :cond_2

    .line 161
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/data/Preference;

    .line 162
    .local v4, "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/data/Metadata;

    .line 163
    .local v3, "metadata":Lorg/restlet/data/Metadata;, "TT;"
    invoke-virtual {v4}, Lorg/restlet/data/Preference;->getMetadata()Lorg/restlet/data/Metadata;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/restlet/data/Metadata;->isCompatible(Lorg/restlet/data/Metadata;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v4}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v6

    cmpl-float v6, v6, v2

    if-lez v6, :cond_1

    .line 165
    move-object v5, v3

    .line 166
    invoke-virtual {v4}, Lorg/restlet/data/Preference;->getQuality()F

    move-result v2

    goto :goto_0

    .line 172
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "metadata":Lorg/restlet/data/Metadata;, "TT;"
    .end local v4    # "pref":Lorg/restlet/data/Preference;, "Lorg/restlet/data/Preference<TT;>;"
    :cond_2
    return-object v5
.end method

.method private static getUserAgentTemplates()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 185
    sget-object v3, Lorg/restlet/data/ClientInfo;->userAgentTemplates:Ljava/util/List;

    .line 186
    .local v3, "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v3, :cond_3

    .line 187
    const-class v7, Lorg/restlet/data/ClientInfo;

    monitor-enter v7

    .line 188
    :try_start_0
    sget-object v3, Lorg/restlet/data/ClientInfo;->userAgentTemplates:Ljava/util/List;

    .line 189
    if-nez v3, :cond_2

    .line 191
    const-string v6, "org/restlet/data/agent.properties"

    invoke-static {v6}, Lorg/restlet/engine/Engine;->getResource(Ljava/lang/String;)Ljava/net/URL;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v5

    .line 194
    .local v5, "userAgentPropertiesUrl":Ljava/net/URL;
    if-eqz v5, :cond_1

    .line 197
    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-virtual {v5}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v8

    sget-object v9, Lorg/restlet/data/CharacterSet;->UTF_8:Lorg/restlet/data/CharacterSet;

    invoke-virtual {v9}, Lorg/restlet/data/CharacterSet;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v8, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    sget v8, Lorg/restlet/engine/io/IoUtils;->BUFFER_SIZE:I

    invoke-direct {v2, v6, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 201
    .local v2, "reader":Ljava/io/BufferedReader;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    .local v1, "line":Ljava/lang/String;
    move-object v4, v3

    .line 202
    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v4, "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v1, :cond_0

    .line 203
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_5

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    const-string v8, "#"

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    .line 205
    if-nez v4, :cond_4

    .line 206
    new-instance v3, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 208
    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    :try_start_3
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    :goto_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v1

    move-object v4, v3

    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0

    .line 211
    :cond_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v4

    .line 225
    .end local v1    # "line":Ljava/lang/String;
    .end local v2    # "reader":Ljava/io/BufferedReader;
    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_3
    :try_start_5
    sput-object v3, Lorg/restlet/data/ClientInfo;->userAgentTemplates:Ljava/util/List;

    .line 227
    .end local v5    # "userAgentPropertiesUrl":Ljava/net/URL;
    :cond_2
    monitor-exit v7

    .line 229
    :cond_3
    return-object v3

    .line 212
    .restart local v5    # "userAgentPropertiesUrl":Ljava/net/URL;
    :catch_0
    move-exception v0

    .line 213
    .local v0, "e":Ljava/io/IOException;
    :goto_4
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 214
    invoke-static {}, Lorg/restlet/Context;->getCurrent()Lorg/restlet/Context;

    move-result-object v6

    invoke-virtual {v6}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cannot read \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v5}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\' due to: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    goto :goto_3

    .line 227
    .end local v0    # "e":Ljava/io/IOException;
    .end local v5    # "userAgentPropertiesUrl":Ljava/net/URL;
    :catchall_0
    move-exception v6

    :goto_5
    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    throw v6

    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "line":Ljava/lang/String;
    .restart local v2    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v5    # "userAgentPropertiesUrl":Ljava/net/URL;
    :catchall_1
    move-exception v6

    move-object v3, v4

    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_5

    .line 212
    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_1
    move-exception v0

    move-object v3, v4

    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_4

    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_4
    move-object v3, v4

    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_1

    .end local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_5
    move-object v3, v4

    .end local v4    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v3    # "u":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_2
.end method


# virtual methods
.method public accept(Lorg/restlet/data/Metadata;F)V
    .locals 2
    .param p1, "metadata"    # Lorg/restlet/data/Metadata;
    .param p2, "quality"    # F

    .prologue
    .line 365
    instance-of v0, p1, Lorg/restlet/data/MediaType;

    if-eqz v0, :cond_0

    .line 366
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p1, Lorg/restlet/data/MediaType;

    .end local p1    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 379
    :goto_0
    return-void

    .line 368
    .restart local p1    # "metadata":Lorg/restlet/data/Metadata;
    :cond_0
    instance-of v0, p1, Lorg/restlet/data/Language;

    if-eqz v0, :cond_1

    .line 369
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p1, Lorg/restlet/data/Language;

    .end local p1    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 371
    .restart local p1    # "metadata":Lorg/restlet/data/Metadata;
    :cond_1
    instance-of v0, p1, Lorg/restlet/data/Encoding;

    if-eqz v0, :cond_2

    .line 372
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p1, Lorg/restlet/data/Encoding;

    .end local p1    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 375
    .restart local p1    # "metadata":Lorg/restlet/data/Metadata;
    :cond_2
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/data/Preference;

    check-cast p1, Lorg/restlet/data/CharacterSet;

    .end local p1    # "metadata":Lorg/restlet/data/Metadata;
    invoke-direct {v1, p1, p2}, Lorg/restlet/data/Preference;-><init>(Lorg/restlet/data/Metadata;F)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public varargs accept([Lorg/restlet/data/Metadata;)V
    .locals 5
    .param p1, "metadata"    # [Lorg/restlet/data/Metadata;

    .prologue
    .line 348
    if-eqz p1, :cond_0

    .line 349
    move-object v0, p1

    .local v0, "arr$":[Lorg/restlet/data/Metadata;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 350
    .local v3, "md":Lorg/restlet/data/Metadata;
    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {p0, v3, v4}, Lorg/restlet/data/ClientInfo;->accept(Lorg/restlet/data/Metadata;F)V

    .line 349
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 353
    .end local v0    # "arr$":[Lorg/restlet/data/Metadata;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "md":Lorg/restlet/data/Metadata;
    :cond_0
    return-void
.end method

.method public getAcceptedCharacterSets()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 392
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedCharacterSets:Ljava/util/List;

    .line 393
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    if-nez v0, :cond_1

    .line 394
    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedCharacterSets:Ljava/util/List;

    .line 396
    if-nez v0, :cond_0

    .line 397
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedCharacterSets:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 399
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 401
    :cond_1
    return-object v0

    .line 399
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    goto :goto_0
.end method

.method public getAcceptedEncodings()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedEncodings:Ljava/util/List;

    .line 416
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    if-nez v0, :cond_1

    .line 417
    monitor-enter p0

    .line 418
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedEncodings:Ljava/util/List;

    .line 419
    if-nez v0, :cond_0

    .line 420
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedEncodings:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 422
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 424
    :cond_1
    return-object v0

    .line 422
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    goto :goto_0
.end method

.method public getAcceptedLanguages()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Language;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 438
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedLanguages:Ljava/util/List;

    .line 439
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    if-nez v0, :cond_1

    .line 440
    monitor-enter p0

    .line 441
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedLanguages:Ljava/util/List;

    .line 442
    if-nez v0, :cond_0

    .line 443
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedLanguages:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 445
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 447
    :cond_1
    return-object v0

    .line 445
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    goto :goto_0
.end method

.method public getAcceptedMediaTypes()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 461
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedMediaTypes:Ljava/util/List;

    .line 462
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    if-nez v0, :cond_1

    .line 463
    monitor-enter p0

    .line 464
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->acceptedMediaTypes:Ljava/util/List;

    .line 465
    if-nez v0, :cond_0

    .line 466
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->acceptedMediaTypes:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 468
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 470
    :cond_1
    return-object v0

    .line 468
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    goto :goto_0
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 483
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getAgent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 493
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->agent:Ljava/lang/String;

    return-object v0
.end method

.method public getAgentAttributes()Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v11, 0x7

    const/4 v12, 0x0

    .line 503
    iget-object v10, p0, Lorg/restlet/data/ClientInfo;->agentAttributes:Ljava/util/Map;

    if-nez v10, :cond_1

    .line 504
    new-instance v10, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v10}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v10, p0, Lorg/restlet/data/ClientInfo;->agentAttributes:Ljava/util/Map;

    .line 505
    new-instance v7, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v7}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 515
    .local v7, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v9, 0x0

    .line 517
    .local v9, "template":Lorg/restlet/routing/Template;
    new-instance v2, Lorg/restlet/routing/Variable;

    invoke-direct {v2, v11}, Lorg/restlet/routing/Variable;-><init>(I)V

    .line 519
    .local v2, "agentName":Lorg/restlet/routing/Variable;
    new-instance v3, Lorg/restlet/routing/Variable;

    invoke-direct {v3, v11}, Lorg/restlet/routing/Variable;-><init>(I)V

    .line 521
    .local v3, "agentVersion":Lorg/restlet/routing/Variable;
    new-instance v0, Lorg/restlet/routing/Variable;

    const/4 v10, 0x4

    invoke-direct {v0, v10}, Lorg/restlet/routing/Variable;-><init>(I)V

    .line 523
    .local v0, "agentComment":Lorg/restlet/routing/Variable;
    new-instance v1, Lorg/restlet/routing/Variable;

    const/4 v10, 0x5

    invoke-direct {v1, v10}, Lorg/restlet/routing/Variable;-><init>(I)V

    .line 525
    .local v1, "agentCommentAttribute":Lorg/restlet/routing/Variable;
    new-instance v4, Lorg/restlet/routing/Variable;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-direct {v4, v10, v11, v12, v12}, Lorg/restlet/routing/Variable;-><init>(ILjava/lang/String;ZZ)V

    .line 528
    .local v4, "facultativeData":Lorg/restlet/routing/Variable;
    invoke-static {}, Lorg/restlet/data/ClientInfo;->getUserAgentTemplates()Ljava/util/List;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 529
    invoke-static {}, Lorg/restlet/data/ClientInfo;->getUserAgentTemplates()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 530
    .local v8, "string":Ljava/lang/String;
    new-instance v9, Lorg/restlet/routing/Template;

    .end local v9    # "template":Lorg/restlet/routing/Template;
    const/4 v10, 0x2

    invoke-direct {v9, v8, v10}, Lorg/restlet/routing/Template;-><init>(Ljava/lang/String;I)V

    .line 533
    .restart local v9    # "template":Lorg/restlet/routing/Template;
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "agentName"

    invoke-interface {v10, v11, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 534
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "agentVersion"

    invoke-interface {v10, v11, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "agentComment"

    invoke-interface {v10, v11, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "agentOs"

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "commentAttribute"

    invoke-interface {v10, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    invoke-virtual {v9}, Lorg/restlet/routing/Template;->getVariables()Ljava/util/Map;

    move-result-object v10

    const-string v11, "facultativeData"

    invoke-interface {v10, v11, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 543
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v7}, Lorg/restlet/routing/Template;->parse(Ljava/lang/String;Ljava/util/Map;)I

    move-result v10

    const/4 v11, -0x1

    if-le v10, v11, :cond_0

    .line 544
    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 545
    .local v6, "key":Ljava/lang/String;
    iget-object v11, p0, Lorg/restlet/data/ClientInfo;->agentAttributes:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-interface {v11, v6, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 554
    .end local v0    # "agentComment":Lorg/restlet/routing/Variable;
    .end local v1    # "agentCommentAttribute":Lorg/restlet/routing/Variable;
    .end local v2    # "agentName":Lorg/restlet/routing/Variable;
    .end local v3    # "agentVersion":Lorg/restlet/routing/Variable;
    .end local v4    # "facultativeData":Lorg/restlet/routing/Variable;
    .end local v5    # "i$":Ljava/util/Iterator;
    .end local v6    # "key":Ljava/lang/String;
    .end local v7    # "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v8    # "string":Ljava/lang/String;
    .end local v9    # "template":Lorg/restlet/routing/Template;
    :cond_1
    iget-object v10, p0, Lorg/restlet/data/ClientInfo;->agentAttributes:Ljava/util/Map;

    return-object v10
.end method

.method public getAgentName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 564
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getMainAgentProduct()Lorg/restlet/data/Product;

    move-result-object v0

    .line 565
    .local v0, "product":Lorg/restlet/data/Product;
    if-eqz v0, :cond_0

    .line 566
    invoke-virtual {v0}, Lorg/restlet/data/Product;->getName()Ljava/lang/String;

    move-result-object v1

    .line 569
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAgentProducts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Product;",
            ">;"
        }
    .end annotation

    .prologue
    .line 579
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->agentProducts:Ljava/util/List;

    if-nez v0, :cond_0

    .line 580
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgent()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/restlet/engine/header/ProductReader;->read(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/restlet/data/ClientInfo;->agentProducts:Ljava/util/List;

    .line 583
    :cond_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->agentProducts:Ljava/util/List;

    return-object v0
.end method

.method public getAgentVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 593
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getMainAgentProduct()Lorg/restlet/data/Product;

    move-result-object v0

    .line 594
    .local v0, "product":Lorg/restlet/data/Product;
    if-eqz v0, :cond_0

    .line 595
    invoke-virtual {v0}, Lorg/restlet/data/Product;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 597
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCertificates()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation

    .prologue
    .line 611
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->certificates:Ljava/util/List;

    .line 612
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    if-nez v0, :cond_1

    .line 613
    monitor-enter p0

    .line 614
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->certificates:Ljava/util/List;

    .line 615
    if-nez v0, :cond_0

    .line 616
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->certificates:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 618
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 620
    :cond_1
    return-object v0

    .line 618
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    goto :goto_0
.end method

.method public getCipherSuite()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->cipherSuite:Ljava/lang/String;

    return-object v0
.end method

.method public getExpectations()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Expectation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 640
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->expectations:Ljava/util/List;

    .line 641
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    if-nez v0, :cond_1

    .line 642
    monitor-enter p0

    .line 643
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->expectations:Ljava/util/List;

    .line 644
    if-nez v0, :cond_0

    .line 645
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->expectations:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 647
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 649
    :cond_1
    return-object v0

    .line 647
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    goto :goto_0
.end method

.method public getForwardedAddresses()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 676
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    .line 677
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-nez v0, :cond_1

    .line 678
    monitor-enter p0

    .line 679
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    .line 680
    if-nez v0, :cond_0

    .line 681
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 683
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 685
    :cond_1
    return-object v0

    .line 683
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    goto :goto_0
.end method

.method public getFrom()Ljava/lang/String;
    .locals 1

    .prologue
    .line 695
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->from:Ljava/lang/String;

    return-object v0
.end method

.method public getMainAgentProduct()Lorg/restlet/data/Product;
    .locals 5

    .prologue
    .line 704
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->agentMainProduct:Lorg/restlet/data/Product;

    if-nez v0, :cond_0

    .line 705
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 706
    new-instance v3, Lorg/restlet/data/Product;

    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v0

    const-string v1, "agentName"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v1

    const-string v2, "agentVersion"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v2

    const-string v4, "agentComment"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v3, v0, v1, v2}, Lorg/restlet/data/Product;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v3, p0, Lorg/restlet/data/ClientInfo;->agentMainProduct:Lorg/restlet/data/Product;

    .line 712
    :cond_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->agentMainProduct:Lorg/restlet/data/Product;

    return-object v0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 722
    iget v0, p0, Lorg/restlet/data/ClientInfo;->port:I

    return v0
.end method

.method public getPreferredCharacterSet(Ljava/util/List;)Lorg/restlet/data/CharacterSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;)",
            "Lorg/restlet/data/CharacterSet;"
        }
    .end annotation

    .prologue
    .line 734
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/CharacterSet;>;"
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/restlet/data/ClientInfo;->getPreferredMetadata(Ljava/util/List;Ljava/util/List;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/CharacterSet;

    return-object v0
.end method

.method public getPreferredEncoding(Ljava/util/List;)Lorg/restlet/data/Encoding;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;)",
            "Lorg/restlet/data/Encoding;"
        }
    .end annotation

    .prologue
    .line 746
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Encoding;>;"
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/restlet/data/ClientInfo;->getPreferredMetadata(Ljava/util/List;Ljava/util/List;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Encoding;

    return-object v0
.end method

.method public getPreferredLanguage(Ljava/util/List;)Lorg/restlet/data/Language;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Language;",
            ">;)",
            "Lorg/restlet/data/Language;"
        }
    .end annotation

    .prologue
    .line 758
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Language;>;"
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/restlet/data/ClientInfo;->getPreferredMetadata(Ljava/util/List;Ljava/util/List;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/Language;

    return-object v0
.end method

.method public getPreferredMediaType(Ljava/util/List;)Lorg/restlet/data/MediaType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;)",
            "Lorg/restlet/data/MediaType;"
        }
    .end annotation

    .prologue
    .line 770
    .local p1, "supported":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/MediaType;>;"
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/restlet/data/ClientInfo;->getPreferredMetadata(Ljava/util/List;Ljava/util/List;)Lorg/restlet/data/Metadata;

    move-result-object v0

    check-cast v0, Lorg/restlet/data/MediaType;

    return-object v0
.end method

.method public getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;)",
            "Lorg/restlet/representation/Variant;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 796
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    const/4 v1, 0x0

    .line 797
    .local v1, "connegService":Lorg/restlet/service/ConnegService;
    const/4 v2, 0x0

    .line 798
    .local v2, "metadataService":Lorg/restlet/service/MetadataService;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 800
    .local v0, "app":Lorg/restlet/Application;
    if-nez v0, :cond_0

    .line 801
    new-instance v1, Lorg/restlet/service/ConnegService;

    .end local v1    # "connegService":Lorg/restlet/service/ConnegService;
    invoke-direct {v1}, Lorg/restlet/service/ConnegService;-><init>()V

    .line 802
    .restart local v1    # "connegService":Lorg/restlet/service/ConnegService;
    new-instance v2, Lorg/restlet/service/MetadataService;

    .end local v2    # "metadataService":Lorg/restlet/service/MetadataService;
    invoke-direct {v2}, Lorg/restlet/service/MetadataService;-><init>()V

    .line 808
    .restart local v2    # "metadataService":Lorg/restlet/service/MetadataService;
    :goto_0
    new-instance v3, Lorg/restlet/Request;

    invoke-direct {v3}, Lorg/restlet/Request;-><init>()V

    .line 809
    .local v3, "request":Lorg/restlet/Request;
    invoke-virtual {v3, p0}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 810
    invoke-virtual {v1, p1, v3, v2}, Lorg/restlet/service/ConnegService;->getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;

    move-result-object v4

    return-object v4

    .line 804
    .end local v3    # "request":Lorg/restlet/Request;
    :cond_0
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v1

    .line 805
    invoke-virtual {v0}, Lorg/restlet/Application;->getMetadataService()Lorg/restlet/service/MetadataService;

    move-result-object v2

    goto :goto_0
.end method

.method public getPreferredVariant(Ljava/util/List;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;
    .locals 4
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;",
            "Lorg/restlet/service/MetadataService;",
            ")",
            "Lorg/restlet/representation/Variant;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 839
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    const/4 v1, 0x0

    .line 840
    .local v1, "connegService":Lorg/restlet/service/ConnegService;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 842
    .local v0, "app":Lorg/restlet/Application;
    if-nez v0, :cond_0

    .line 843
    new-instance v1, Lorg/restlet/service/ConnegService;

    .end local v1    # "connegService":Lorg/restlet/service/ConnegService;
    invoke-direct {v1}, Lorg/restlet/service/ConnegService;-><init>()V

    .line 848
    .restart local v1    # "connegService":Lorg/restlet/service/ConnegService;
    :goto_0
    new-instance v2, Lorg/restlet/Request;

    invoke-direct {v2}, Lorg/restlet/Request;-><init>()V

    .line 849
    .local v2, "request":Lorg/restlet/Request;
    invoke-virtual {v2, p0}, Lorg/restlet/Request;->setClientInfo(Lorg/restlet/data/ClientInfo;)V

    .line 850
    invoke-virtual {v1, p1, v2, p2}, Lorg/restlet/service/ConnegService;->getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;

    move-result-object v3

    return-object v3

    .line 845
    .end local v2    # "request":Lorg/restlet/Request;
    :cond_0
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnegService()Lorg/restlet/service/ConnegService;

    move-result-object v1

    goto :goto_0
.end method

.method public getPrincipals()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/security/Principal;",
            ">;"
        }
    .end annotation

    .prologue
    .line 862
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->principals:Ljava/util/List;

    .line 863
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    if-nez v0, :cond_1

    .line 864
    monitor-enter p0

    .line 865
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->principals:Ljava/util/List;

    .line 866
    if-nez v0, :cond_0

    .line 867
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->principals:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 869
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 871
    :cond_1
    return-object v0

    .line 869
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    goto :goto_0
.end method

.method public getRoles()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 881
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->roles:Ljava/util/List;

    .line 882
    .local v0, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    if-nez v0, :cond_1

    .line 883
    monitor-enter p0

    .line 884
    :try_start_0
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->roles:Ljava/util/List;

    .line 885
    if-nez v0, :cond_0

    .line 886
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    .local v1, "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    :try_start_1
    iput-object v1, p0, Lorg/restlet/data/ClientInfo;->roles:Ljava/util/List;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v0, v1

    .line 888
    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    :cond_0
    :try_start_2
    monitor-exit p0

    .line 890
    :cond_1
    return-object v0

    .line 888
    :catchall_0
    move-exception v2

    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    .end local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    .restart local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    :catchall_1
    move-exception v2

    move-object v0, v1

    .end local v1    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    .restart local v0    # "a":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    goto :goto_0
.end method

.method public getUpstreamAddress()Ljava/lang/String;
    .locals 2

    .prologue
    .line 911
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 913
    :cond_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 916
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->forwardedAddresses:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUser()Lorg/restlet/security/User;
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lorg/restlet/data/ClientInfo;->user:Lorg/restlet/security/User;

    return-object v0
.end method

.method public isAuthenticated()Z
    .locals 1

    .prologue
    .line 936
    iget-boolean v0, p0, Lorg/restlet/data/ClientInfo;->authenticated:Z

    return v0
.end method

.method public setAcceptedCharacterSets(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/CharacterSet;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 948
    .local p1, "acceptedCharacterSets":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    monitor-enter p0

    .line 949
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedCharacterSets()Ljava/util/List;

    move-result-object v0

    .line 950
    .local v0, "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 951
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 952
    monitor-exit p0

    .line 953
    return-void

    .line 952
    .end local v0    # "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/CharacterSet;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAcceptedEncodings(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Encoding;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 964
    .local p1, "acceptedEncodings":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    monitor-enter p0

    .line 965
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedEncodings()Ljava/util/List;

    move-result-object v0

    .line 966
    .local v0, "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 967
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 968
    monitor-exit p0

    .line 969
    return-void

    .line 968
    .end local v0    # "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Encoding;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAcceptedLanguages(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/Language;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 980
    .local p1, "acceptedLanguages":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    monitor-enter p0

    .line 981
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedLanguages()Ljava/util/List;

    move-result-object v0

    .line 982
    .local v0, "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 983
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 984
    monitor-exit p0

    .line 985
    return-void

    .line 984
    .end local v0    # "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/Language;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAcceptedMediaTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Preference",
            "<",
            "Lorg/restlet/data/MediaType;",
            ">;>;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, "acceptedMediaTypes":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    monitor-enter p0

    .line 997
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAcceptedMediaTypes()Ljava/util/List;

    move-result-object v0

    .line 998
    .local v0, "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 999
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1000
    monitor-exit p0

    .line 1001
    return-void

    .line 1000
    .end local v0    # "ac":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Preference<Lorg/restlet/data/MediaType;>;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;

    .prologue
    .line 1010
    iput-object p1, p0, Lorg/restlet/data/ClientInfo;->address:Ljava/lang/String;

    .line 1011
    return-void
.end method

.method public setAgent(Ljava/lang/String;)V
    .locals 0
    .param p1, "agent"    # Ljava/lang/String;

    .prologue
    .line 1021
    iput-object p1, p0, Lorg/restlet/data/ClientInfo;->agent:Ljava/lang/String;

    .line 1022
    return-void
.end method

.method public setAgentAttributes(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1031
    .local p1, "agentAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    monitor-enter p0

    .line 1032
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentAttributes()Ljava/util/Map;

    move-result-object v0

    .line 1033
    .local v0, "aa":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 1034
    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 1035
    monitor-exit p0

    .line 1036
    return-void

    .line 1035
    .end local v0    # "aa":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAgentProducts(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Product;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1045
    .local p1, "agentProducts":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Product;>;"
    monitor-enter p0

    .line 1046
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getAgentProducts()Ljava/util/List;

    move-result-object v0

    .line 1047
    .local v0, "ap":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Product;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1048
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1049
    monitor-exit p0

    .line 1050
    return-void

    .line 1049
    .end local v0    # "ap":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Product;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setAuthenticated(Z)V
    .locals 0
    .param p1, "authenticated"    # Z

    .prologue
    .line 1061
    iput-boolean p1, p0, Lorg/restlet/data/ClientInfo;->authenticated:Z

    .line 1062
    return-void
.end method

.method public setCertificates(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "certificates":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    monitor-enter p0

    .line 1074
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getCertificates()Ljava/util/List;

    move-result-object v0

    .line 1075
    .local v0, "fa":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1076
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1077
    monitor-exit p0

    .line 1078
    return-void

    .line 1077
    .end local v0    # "fa":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/Certificate;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setCipherSuite(Ljava/lang/String;)V
    .locals 0
    .param p1, "cipherSuite"    # Ljava/lang/String;

    .prologue
    .line 1087
    iput-object p1, p0, Lorg/restlet/data/ClientInfo;->cipherSuite:Ljava/lang/String;

    .line 1088
    return-void
.end method

.method public setExpectations(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Expectation;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1097
    .local p1, "expectations":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    monitor-enter p0

    .line 1098
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getExpectations()Ljava/util/List;

    move-result-object v0

    .line 1099
    .local v0, "e":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1100
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1101
    monitor-exit p0

    .line 1102
    return-void

    .line 1101
    .end local v0    # "e":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/data/Expectation;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setForwardedAddresses(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1112
    .local p1, "forwardedAddresses":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    monitor-enter p0

    .line 1113
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getForwardedAddresses()Ljava/util/List;

    move-result-object v0

    .line 1114
    .local v0, "fa":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1115
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1116
    monitor-exit p0

    .line 1117
    return-void

    .line 1116
    .end local v0    # "fa":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "from"    # Ljava/lang/String;

    .prologue
    .line 1127
    iput-object p1, p0, Lorg/restlet/data/ClientInfo;->from:Ljava/lang/String;

    .line 1128
    return-void
.end method

.method public setPort(I)V
    .locals 0
    .param p1, "port"    # I

    .prologue
    .line 1137
    iput p1, p0, Lorg/restlet/data/ClientInfo;->port:I

    .line 1138
    return-void
.end method

.method public setPrincipals(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/security/Principal;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1148
    .local p1, "principals":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    monitor-enter p0

    .line 1149
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getPrincipals()Ljava/util/List;

    move-result-object v0

    .line 1150
    .local v0, "fa":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1151
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1152
    monitor-exit p0

    .line 1153
    return-void

    .line 1152
    .end local v0    # "fa":Ljava/util/List;, "Ljava/util/List<Ljava/security/Principal;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1162
    .local p1, "roles":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    monitor-enter p0

    .line 1163
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v0

    .line 1164
    .local v0, "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 1165
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1166
    monitor-exit p0

    .line 1167
    return-void

    .line 1166
    .end local v0    # "r":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setUser(Lorg/restlet/security/User;)V
    .locals 0
    .param p1, "user"    # Lorg/restlet/security/User;

    .prologue
    .line 1176
    iput-object p1, p0, Lorg/restlet/data/ClientInfo;->user:Lorg/restlet/security/User;

    .line 1177
    return-void
.end method

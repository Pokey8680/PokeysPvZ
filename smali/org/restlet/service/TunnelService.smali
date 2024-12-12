.class public Lorg/restlet/service/TunnelService;
.super Lorg/restlet/service/Service;
.source "TunnelService.java"


# instance fields
.field private volatile characterSetParameter:Ljava/lang/String;

.field private volatile encodingParameter:Ljava/lang/String;

.field private volatile extensionsTunnel:Z

.field private volatile headersTunnel:Z

.field private volatile languageParameter:Ljava/lang/String;

.field private volatile mediaTypeParameter:Ljava/lang/String;

.field private volatile methodHeader:Ljava/lang/String;

.field private volatile methodParameter:Ljava/lang/String;

.field private volatile methodTunnel:Z

.field private volatile preferencesTunnel:Z

.field private volatile queryTunnel:Z

.field private volatile userAgentTunnel:Z


# direct methods
.method public constructor <init>(ZZ)V
    .locals 1
    .param p1, "methodTunnel"    # Z
    .param p2, "preferencesTunnel"    # Z

    .prologue
    .line 195
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2}, Lorg/restlet/service/TunnelService;-><init>(ZZZ)V

    .line 196
    return-void
.end method

.method public constructor <init>(ZZZ)V
    .locals 6
    .param p1, "enabled"    # Z
    .param p2, "methodTunnel"    # Z
    .param p3, "preferencesTunnel"    # Z

    .prologue
    .line 212
    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Lorg/restlet/service/TunnelService;-><init>(ZZZZZ)V

    .line 213
    return-void
.end method

.method public constructor <init>(ZZZZZ)V
    .locals 7
    .param p1, "enabled"    # Z
    .param p2, "methodTunnel"    # Z
    .param p3, "preferencesTunnel"    # Z
    .param p4, "queryTunnel"    # Z
    .param p5, "extensionsTunnel"    # Z

    .prologue
    .line 234
    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/restlet/service/TunnelService;-><init>(ZZZZZZ)V

    .line 236
    return-void
.end method

.method public constructor <init>(ZZZZZZ)V
    .locals 8
    .param p1, "enabled"    # Z
    .param p2, "methodTunnel"    # Z
    .param p3, "preferencesTunnel"    # Z
    .param p4, "queryTunnel"    # Z
    .param p5, "extensionsTunnel"    # Z
    .param p6, "userAgentTunnel"    # Z

    .prologue
    .line 259
    const/4 v7, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v7}, Lorg/restlet/service/TunnelService;-><init>(ZZZZZZZ)V

    .line 261
    return-void
.end method

.method public constructor <init>(ZZZZZZZ)V
    .locals 1
    .param p1, "enabled"    # Z
    .param p2, "methodTunnel"    # Z
    .param p3, "preferencesTunnel"    # Z
    .param p4, "queryTunnel"    # Z
    .param p5, "extensionsTunnel"    # Z
    .param p6, "userAgentTunnel"    # Z
    .param p7, "headersTunnel"    # Z

    .prologue
    .line 287
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 289
    iput-boolean p5, p0, Lorg/restlet/service/TunnelService;->extensionsTunnel:Z

    .line 290
    iput-boolean p2, p0, Lorg/restlet/service/TunnelService;->methodTunnel:Z

    .line 291
    iput-boolean p3, p0, Lorg/restlet/service/TunnelService;->preferencesTunnel:Z

    .line 292
    iput-boolean p4, p0, Lorg/restlet/service/TunnelService;->queryTunnel:Z

    .line 293
    iput-boolean p6, p0, Lorg/restlet/service/TunnelService;->userAgentTunnel:Z

    .line 294
    iput-boolean p7, p0, Lorg/restlet/service/TunnelService;->headersTunnel:Z

    .line 296
    const-string v0, "charset"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->characterSetParameter:Ljava/lang/String;

    .line 297
    const-string v0, "encoding"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->encodingParameter:Ljava/lang/String;

    .line 298
    const-string v0, "language"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->languageParameter:Ljava/lang/String;

    .line 299
    const-string v0, "media"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->mediaTypeParameter:Ljava/lang/String;

    .line 300
    const-string v0, "method"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->methodParameter:Ljava/lang/String;

    .line 301
    const-string v0, "X-HTTP-Method-Override"

    iput-object v0, p0, Lorg/restlet/service/TunnelService;->methodHeader:Ljava/lang/String;

    .line 302
    return-void
.end method


# virtual methods
.method public allowClient(Lorg/restlet/data/ClientInfo;)Z
    .locals 1
    .param p1, "client"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 314
    const/4 v0, 0x1

    return v0
.end method

.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 319
    new-instance v0, Lorg/restlet/engine/application/TunnelFilter;

    invoke-direct {v0, p1}, Lorg/restlet/engine/application/TunnelFilter;-><init>(Lorg/restlet/Context;)V

    return-object v0
.end method

.method public getCharacterSetParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->characterSetParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getEncodingParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 337
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->encodingParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguageParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 346
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->languageParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getMediaTypeParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->mediaTypeParameter:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodHeader()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->methodHeader:Ljava/lang/String;

    return-object v0
.end method

.method public getMethodParameter()Ljava/lang/String;
    .locals 1

    .prologue
    .line 373
    iget-object v0, p0, Lorg/restlet/service/TunnelService;->methodParameter:Ljava/lang/String;

    return-object v0
.end method

.method public isExtensionsTunnel()Z
    .locals 1

    .prologue
    .line 384
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->extensionsTunnel:Z

    return v0
.end method

.method public isHeadersTunnel()Z
    .locals 1

    .prologue
    .line 394
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->headersTunnel:Z

    return v0
.end method

.method public isMethodTunnel()Z
    .locals 1

    .prologue
    .line 403
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->methodTunnel:Z

    return v0
.end method

.method public isPreferencesTunnel()Z
    .locals 1

    .prologue
    .line 413
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->preferencesTunnel:Z

    return v0
.end method

.method public isQueryTunnel()Z
    .locals 1

    .prologue
    .line 423
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->queryTunnel:Z

    return v0
.end method

.method public isUserAgentTunnel()Z
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lorg/restlet/service/TunnelService;->userAgentTunnel:Z

    return v0
.end method

.method public setCharacterSetParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 444
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->characterSetParameter:Ljava/lang/String;

    .line 445
    return-void
.end method

.method public setEncodingParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 454
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->encodingParameter:Ljava/lang/String;

    .line 455
    return-void
.end method

.method public setExtensionsTunnel(Z)V
    .locals 0
    .param p1, "extensionTunnel"    # Z

    .prologue
    .line 466
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->extensionsTunnel:Z

    .line 467
    return-void
.end method

.method public setHeaderTunnel(Z)V
    .locals 0
    .param p1, "headersTunnel"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 488
    invoke-virtual {p0, p1}, Lorg/restlet/service/TunnelService;->setHeadersTunnel(Z)V

    .line 489
    return-void
.end method

.method public setHeadersTunnel(Z)V
    .locals 0
    .param p1, "headersTunnel"    # Z

    .prologue
    .line 476
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->headersTunnel:Z

    .line 477
    return-void
.end method

.method public setLanguageParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 498
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->languageParameter:Ljava/lang/String;

    .line 499
    return-void
.end method

.method public setMediaTypeParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 508
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->mediaTypeParameter:Ljava/lang/String;

    .line 509
    return-void
.end method

.method public setMethodHeader(Ljava/lang/String;)V
    .locals 0
    .param p1, "methodHeader"    # Ljava/lang/String;

    .prologue
    .line 518
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->methodHeader:Ljava/lang/String;

    .line 519
    return-void
.end method

.method public setMethodParameter(Ljava/lang/String;)V
    .locals 0
    .param p1, "parameterName"    # Ljava/lang/String;

    .prologue
    .line 528
    iput-object p1, p0, Lorg/restlet/service/TunnelService;->methodParameter:Ljava/lang/String;

    .line 529
    return-void
.end method

.method public setMethodTunnel(Z)V
    .locals 0
    .param p1, "methodTunnel"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->methodTunnel:Z

    .line 539
    return-void
.end method

.method public setPreferencesTunnel(Z)V
    .locals 0
    .param p1, "preferencesTunnel"    # Z

    .prologue
    .line 550
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->preferencesTunnel:Z

    .line 551
    return-void
.end method

.method public setQueryTunnel(Z)V
    .locals 0
    .param p1, "queryTunnel"    # Z

    .prologue
    .line 562
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->queryTunnel:Z

    .line 563
    return-void
.end method

.method public setUserAgentTunnel(Z)V
    .locals 0
    .param p1, "userAgentTunnel"    # Z

    .prologue
    .line 574
    iput-boolean p1, p0, Lorg/restlet/service/TunnelService;->userAgentTunnel:Z

    .line 575
    return-void
.end method

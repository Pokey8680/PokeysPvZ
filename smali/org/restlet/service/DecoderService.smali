.class public Lorg/restlet/service/DecoderService;
.super Lorg/restlet/service/Service;
.source "DecoderService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 53
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 54
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 63
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 64
    return-void
.end method


# virtual methods
.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 68
    new-instance v0, Lorg/restlet/engine/application/Decoder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lorg/restlet/engine/application/Decoder;-><init>(Lorg/restlet/Context;ZZ)V

    return-object v0
.end method

.method public createOutboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 3
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 73
    new-instance v0, Lorg/restlet/engine/application/Decoder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Lorg/restlet/engine/application/Decoder;-><init>(Lorg/restlet/Context;ZZ)V

    return-object v0
.end method

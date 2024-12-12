.class public Lorg/restlet/service/RangeService;
.super Lorg/restlet/service/Service;
.source "RangeService.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lorg/restlet/service/Service;-><init>()V

    .line 56
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 65
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 66
    return-void
.end method


# virtual methods
.method public createInboundFilter(Lorg/restlet/Context;)Lorg/restlet/routing/Filter;
    .locals 1
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 70
    new-instance v0, Lorg/restlet/engine/application/RangeFilter;

    invoke-direct {v0, p1}, Lorg/restlet/engine/application/RangeFilter;-><init>(Lorg/restlet/Context;)V

    return-object v0
.end method

.class public abstract Lorg/restlet/engine/ProtocolHelper;
.super Lorg/restlet/engine/Helper;
.source "ProtocolHelper.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lorg/restlet/engine/Helper;-><init>()V

    .line 49
    invoke-virtual {p0}, Lorg/restlet/engine/ProtocolHelper;->registerMethods()V

    .line 50
    return-void
.end method


# virtual methods
.method public abstract registerMethods()V
.end method

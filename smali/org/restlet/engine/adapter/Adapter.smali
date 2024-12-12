.class public Lorg/restlet/engine/adapter/Adapter;
.super Ljava/lang/Object;
.source "Adapter.java"


# instance fields
.field private volatile context:Lorg/restlet/Context;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 0
    .param p1, "context"    # Lorg/restlet/Context;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/restlet/engine/adapter/Adapter;->context:Lorg/restlet/Context;

    .line 58
    return-void
.end method


# virtual methods
.method public getContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lorg/restlet/engine/adapter/Adapter;->context:Lorg/restlet/Context;

    return-object v0
.end method

.method public getLogger()Ljava/util/logging/Logger;
    .locals 2

    .prologue
    .line 75
    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Adapter;->getContext()Lorg/restlet/Context;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/adapter/Adapter;->getContext()Lorg/restlet/Context;

    move-result-object v1

    invoke-virtual {v1}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    .line 77
    .local v0, "result":Ljava/util/logging/Logger;
    :goto_0
    if-eqz v0, :cond_1

    .end local v0    # "result":Ljava/util/logging/Logger;
    :goto_1
    return-object v0

    .line 75
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 77
    .restart local v0    # "result":Ljava/util/logging/Logger;
    :cond_1
    invoke-static {}, Lorg/restlet/Context;->getCurrentLogger()Ljava/util/logging/Logger;

    move-result-object v0

    goto :goto_1
.end method

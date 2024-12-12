.class public abstract Lorg/restlet/engine/ConnectorHelper;
.super Lorg/restlet/engine/RestletHelper;
.source "ConnectorHelper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/restlet/Connector;",
        ">",
        "Lorg/restlet/engine/RestletHelper",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final protocols:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/restlet/Connector;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    .local p1, "connector":Lorg/restlet/Connector;, "TT;"
    invoke-direct {p0, p1}, Lorg/restlet/engine/RestletHelper;-><init>(Lorg/restlet/Restlet;)V

    .line 78
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/engine/ConnectorHelper;->protocols:Ljava/util/List;

    .line 79
    return-void
.end method

.method public static getConnectorService()Lorg/restlet/service/ConnectorService;
    .locals 2

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 58
    .local v1, "result":Lorg/restlet/service/ConnectorService;
    invoke-static {}, Lorg/restlet/Application;->getCurrent()Lorg/restlet/Application;

    move-result-object v0

    .line 61
    .local v0, "application":Lorg/restlet/Application;
    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {v0}, Lorg/restlet/Application;->getConnectorService()Lorg/restlet/service/ConnectorService;

    move-result-object v1

    .line 67
    :goto_0
    return-object v1

    .line 64
    :cond_0
    new-instance v1, Lorg/restlet/service/ConnectorService;

    .end local v1    # "result":Lorg/restlet/service/ConnectorService;
    invoke-direct {v1}, Lorg/restlet/service/ConnectorService;-><init>()V

    .restart local v1    # "result":Lorg/restlet/service/ConnectorService;
    goto :goto_0
.end method


# virtual methods
.method public getContext()Lorg/restlet/Context;
    .locals 2

    .prologue
    .line 88
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    sget-object v0, Lorg/restlet/engine/Edition;->CURRENT:Lorg/restlet/engine/Edition;

    sget-object v1, Lorg/restlet/engine/Edition;->GWT:Lorg/restlet/engine/Edition;

    if-ne v0, v1, :cond_0

    .line 89
    const/4 v0, 0x0

    .line 92
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0}, Lorg/restlet/engine/RestletHelper;->getContext()Lorg/restlet/Context;

    move-result-object v0

    goto :goto_0
.end method

.method public getProtocols()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/data/Protocol;",
            ">;"
        }
    .end annotation

    .prologue
    .line 101
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    iget-object v0, p0, Lorg/restlet/engine/ConnectorHelper;->protocols:Ljava/util/List;

    return-object v0
.end method

.method public start()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    return-void
.end method

.method public stop()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 110
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    return-void
.end method

.method public update()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 114
    .local p0, "this":Lorg/restlet/engine/ConnectorHelper;, "Lorg/restlet/engine/ConnectorHelper<TT;>;"
    return-void
.end method

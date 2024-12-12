.class public Lorg/restlet/engine/util/ChildContext;
.super Lorg/restlet/Context;
.source "ChildContext.java"


# instance fields
.field private volatile child:Lorg/restlet/Restlet;

.field private volatile parentContext:Lorg/restlet/Context;


# direct methods
.method public constructor <init>(Lorg/restlet/Context;)V
    .locals 2
    .param p1, "parentContext"    # Lorg/restlet/Context;

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0}, Lorg/restlet/Context;-><init>()V

    .line 61
    iput-object v0, p0, Lorg/restlet/engine/util/ChildContext;->child:Lorg/restlet/Restlet;

    .line 62
    iput-object p1, p0, Lorg/restlet/engine/util/ChildContext;->parentContext:Lorg/restlet/Context;

    .line 63
    new-instance v1, Lorg/restlet/engine/util/ChildClientDispatcher;

    invoke-direct {v1, p0}, Lorg/restlet/engine/util/ChildClientDispatcher;-><init>(Lorg/restlet/engine/util/ChildContext;)V

    invoke-virtual {p0, v1}, Lorg/restlet/engine/util/ChildContext;->setClientDispatcher(Lorg/restlet/Restlet;)V

    .line 64
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lorg/restlet/engine/util/ChildContext;->getParentContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/Context;->getServerDispatcher()Lorg/restlet/Restlet;

    move-result-object v0

    :cond_0
    invoke-virtual {p0, v0}, Lorg/restlet/engine/util/ChildContext;->setServerDispatcher(Lorg/restlet/Restlet;)V

    .line 66
    return-void
.end method


# virtual methods
.method public getChild()Lorg/restlet/Restlet;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/restlet/engine/util/ChildContext;->child:Lorg/restlet/Restlet;

    return-object v0
.end method

.method protected getParentContext()Lorg/restlet/Context;
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lorg/restlet/engine/util/ChildContext;->parentContext:Lorg/restlet/Context;

    return-object v0
.end method

.method public setChild(Lorg/restlet/Restlet;)V
    .locals 1
    .param p1, "child"    # Lorg/restlet/Restlet;

    .prologue
    .line 93
    iput-object p1, p0, Lorg/restlet/engine/util/ChildContext;->child:Lorg/restlet/Restlet;

    .line 94
    iget-object v0, p0, Lorg/restlet/engine/util/ChildContext;->parentContext:Lorg/restlet/Context;

    invoke-virtual {v0}, Lorg/restlet/Context;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/logging/Logger;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/restlet/engine/log/LogUtils;->getLoggerName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/restlet/engine/util/ChildContext;->setLogger(Ljava/lang/String;)V

    .line 96
    return-void
.end method

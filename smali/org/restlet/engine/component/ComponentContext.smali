.class public Lorg/restlet/engine/component/ComponentContext;
.super Lorg/restlet/Context;
.source "ComponentContext.java"


# instance fields
.field private volatile componentHelper:Lorg/restlet/engine/component/ComponentHelper;


# direct methods
.method public constructor <init>(Lorg/restlet/engine/component/ComponentHelper;)V
    .locals 2
    .param p1, "componentHelper"    # Lorg/restlet/engine/component/ComponentHelper;

    .prologue
    .line 57
    const-string v0, "org.restlet"

    invoke-virtual {p1}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/restlet/engine/log/LogUtils;->getLoggerName(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/restlet/Context;-><init>(Ljava/lang/String;)V

    .line 59
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentContext;->componentHelper:Lorg/restlet/engine/component/ComponentHelper;

    .line 60
    new-instance v0, Lorg/restlet/engine/component/ComponentClientDispatcher;

    invoke-direct {v0, p0}, Lorg/restlet/engine/component/ComponentClientDispatcher;-><init>(Lorg/restlet/engine/component/ComponentContext;)V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/ComponentContext;->setClientDispatcher(Lorg/restlet/Restlet;)V

    .line 61
    new-instance v0, Lorg/restlet/engine/component/ComponentServerDispatcher;

    invoke-direct {v0, p0}, Lorg/restlet/engine/component/ComponentServerDispatcher;-><init>(Lorg/restlet/engine/component/ComponentContext;)V

    invoke-virtual {p0, v0}, Lorg/restlet/engine/component/ComponentContext;->setServerDispatcher(Lorg/restlet/Restlet;)V

    .line 62
    return-void
.end method


# virtual methods
.method public createChildContext()Lorg/restlet/Context;
    .locals 2

    .prologue
    .line 66
    new-instance v1, Lorg/restlet/engine/util/ChildContext;

    invoke-virtual {p0}, Lorg/restlet/engine/component/ComponentContext;->getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;

    move-result-object v0

    invoke-virtual {v0}, Lorg/restlet/engine/component/ComponentHelper;->getHelped()Lorg/restlet/Restlet;

    move-result-object v0

    check-cast v0, Lorg/restlet/Component;

    invoke-virtual {v0}, Lorg/restlet/Component;->getContext()Lorg/restlet/Context;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/restlet/engine/util/ChildContext;-><init>(Lorg/restlet/Context;)V

    return-object v1
.end method

.method protected getComponentHelper()Lorg/restlet/engine/component/ComponentHelper;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lorg/restlet/engine/component/ComponentContext;->componentHelper:Lorg/restlet/engine/component/ComponentHelper;

    return-object v0
.end method

.method protected setComponentHelper(Lorg/restlet/engine/component/ComponentHelper;)V
    .locals 0
    .param p1, "componentHelper"    # Lorg/restlet/engine/component/ComponentHelper;

    .prologue
    .line 85
    iput-object p1, p0, Lorg/restlet/engine/component/ComponentContext;->componentHelper:Lorg/restlet/engine/component/ComponentHelper;

    .line 86
    return-void
.end method

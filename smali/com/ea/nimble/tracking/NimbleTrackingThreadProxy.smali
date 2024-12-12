.class public abstract Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;
.super Lcom/ea/nimble/Component;
.source "NimbleTrackingThreadProxy.java"

# interfaces
.implements Lcom/ea/nimble/tracking/ITracking;


# instance fields
.field private m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

.field private m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;


# direct methods
.method protected constructor <init>(Lcom/ea/nimble/tracking/NimbleTrackingImplBase;)V
    .locals 0
    .param p1, "impl"    # Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    .line 15
    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)Lcom/ea/nimble/tracking/NimbleTrackingImplBase;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;

    .prologue
    .line 7
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    return-object v0
.end method


# virtual methods
.method public addCustomSessionData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$9;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 133
    return-void
.end method

.method protected cleanup()V
    .locals 3

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$5;

    invoke-direct {v2, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$5;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    .line 76
    return-void
.end method

.method public clearCustomSessionData()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$10;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 145
    return-void
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getComponentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEnable()Z
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_impl:Lcom/ea/nimble/tracking/NimbleTrackingImplBase;

    invoke-virtual {v0}, Lcom/ea/nimble/tracking/NimbleTrackingImplBase;->getEnable()Z

    move-result v0

    return v0
.end method

.method public logEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$8;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/util/Map;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method protected restore()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$2;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$2;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 40
    return-void
.end method

.method protected resume()V
    .locals 2

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$4;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$4;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 64
    return-void
.end method

.method public setEnable(Z)V
    .locals 3
    .param p1, "enable"    # Z

    .prologue
    .line 95
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;

    invoke-direct {v2, p0, p1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$7;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Z)V

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    .line 102
    return-void
.end method

.method public setTrackingAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 150
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;

    invoke-direct {v1, p0, p1, p2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$11;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 157
    return-void
.end method

.method protected setup()V
    .locals 2

    .prologue
    .line 20
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->acquireInstance()Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 21
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$1;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$1;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 28
    return-void
.end method

.method protected suspend()V
    .locals 2

    .prologue
    .line 45
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    new-instance v1, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$3;

    invoke-direct {v1, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$3;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(Ljava/lang/Runnable;)V

    .line 52
    return-void
.end method

.method protected teardown()V
    .locals 3

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    const/4 v1, 0x1

    new-instance v2, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$6;

    invoke-direct {v2, p0}, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy$6;-><init>(Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;)V

    invoke-virtual {v0, v1, v2}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->runInWorkerThread(ZLjava/lang/Runnable;)V

    .line 88
    invoke-static {}, Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;->releaseInstance()V

    .line 89
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/tracking/NimbleTrackingThreadProxy;->m_threadManager:Lcom/ea/nimble/tracking/NimbleTrackingThreadManager;

    .line 90
    return-void
.end method

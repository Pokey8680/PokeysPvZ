.class public abstract Lroboguice/service/RoboService;
.super Landroid/app/Service;
.source "RoboService.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

.field protected scopedObjects:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 48
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public getScopedObjectMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Lcom/google/inject/Key",
            "<*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 92
    iget-object v0, p0, Lroboguice/service/RoboService;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 85
    invoke-virtual {p0}, Lroboguice/service/RoboService;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 86
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 87
    iget-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnConfigurationChangedEvent;

    invoke-direct {v2, p0, v0, p1}, Lroboguice/context/event/OnConfigurationChangedEvent;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 88
    return-void
.end method

.method public onCreate()V
    .locals 4

    .prologue
    .line 55
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 56
    .local v0, "injector":Lcom/google/inject/Injector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lcom/google/inject/Injector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    .line 57
    invoke-interface {v0, p0}, Lcom/google/inject/Injector;->injectMembers(Ljava/lang/Object;)V

    .line 58
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 59
    iget-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnCreateEvent;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lroboguice/context/event/OnCreateEvent;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 60
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 72
    :try_start_0
    iget-object v0, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnDestroyEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnDestroyEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 76
    :cond_0
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 81
    return-void

    .line 78
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 78
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    throw v0
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    move-result v0

    .line 65
    .local v0, "startCont":I
    iget-object v1, p0, Lroboguice/service/RoboService;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnStartEvent;

    invoke-direct {v2, p0}, Lroboguice/context/event/OnStartEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 66
    return v0
.end method

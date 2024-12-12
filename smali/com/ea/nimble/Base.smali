.class public Lcom/ea/nimble/Base;
.super Ljava/lang/Object;
.source "Base.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 50
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/ComponentManager;->getComponent(Ljava/lang/String;)Lcom/ea/nimble/Component;

    move-result-object v0

    return-object v0
.end method

.method public static getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 62
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/ComponentManager;->getComponentList(Ljava/lang/String;)[Lcom/ea/nimble/Component;

    move-result-object v0

    return-object v0
.end method

.method public static getConfiguration()Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    .prologue
    .line 73
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getConfiguration()Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public static registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V
    .locals 1
    .param p0, "component"    # Lcom/ea/nimble/Component;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->getComponentManager()Lcom/ea/nimble/ComponentManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V
    .locals 1
    .param p0, "configuration"    # Lcom/ea/nimble/NimbleConfiguration;

    .prologue
    .line 85
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->activeValidate()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/ea/nimble/BaseCore;->restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V

    .line 86
    return-void
.end method

.method public static setupNimble()V
    .locals 1

    .prologue
    .line 14
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->setup()V

    .line 15
    return-void
.end method

.method public static teardownNimble()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/ea/nimble/BaseCore;->getInstance()Lcom/ea/nimble/BaseCore;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->teardown()V

    .line 27
    return-void
.end method

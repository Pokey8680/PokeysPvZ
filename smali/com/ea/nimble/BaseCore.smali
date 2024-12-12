.class Lcom/ea/nimble/BaseCore;
.super Ljava/lang/Object;
.source "BaseCore.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/BaseCore$State;
    }
.end annotation


# static fields
.field public static final NIMBLE_COMPONENT_LIST:Ljava/lang/String; = "setting::components"

.field public static final NIMBLE_LOG_SETTING:Ljava/lang/String; = "setting::log"

.field public static final NIMBLE_SERVER_CONFIG:Ljava/lang/String; = "com.ea.nimble.configuration"

.field protected static s_core:Lcom/ea/nimble/BaseCore;

.field protected static s_coreDestroyed:Z


# instance fields
.field protected m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

.field protected m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

.field protected m_componentManager:Lcom/ea/nimble/ComponentManager;

.field protected m_configuration:Lcom/ea/nimble/NimbleConfiguration;

.field protected m_log:Lcom/ea/nimble/LogImpl;

.field protected m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

.field protected m_state:Lcom/ea/nimble/BaseCore$State;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 401
    const/4 v0, 0x0

    sput-boolean v0, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 381
    return-void
.end method

.method private destroy()V
    .locals 2

    .prologue
    .line 405
    const-string v0, "NIMBLE DESTROY for Android will keep Core and Static components alive"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 420
    return-void
.end method

.method public static getInstance()Lcom/ea/nimble/BaseCore;
    .locals 5

    .prologue
    .line 180
    sget-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    if-nez v0, :cond_1

    .line 182
    sget-boolean v0, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    if-eqz v0, :cond_0

    .line 185
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Cannot revive destroyed BaseCore, please utilizesetupNimble() and tearDownNimble() explicitly to extend longevity to match your expectation."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 189
    :cond_0
    const-string v0, "Nimble"

    const-string v1, "NIMBLE VERSION %s (Build %s)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "1.23.8.1124"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "1.23.8.1124"

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    new-instance v0, Lcom/ea/nimble/BaseCore;

    invoke-direct {v0}, Lcom/ea/nimble/BaseCore;-><init>()V

    sput-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    .line 191
    sget-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    invoke-direct {v0}, Lcom/ea/nimble/BaseCore;->initialize()V

    .line 193
    :cond_1
    sget-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    return-object v0
.end method

.method private initialize()V
    .locals 15

    .prologue
    .line 35
    sget-object v10, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 36
    invoke-direct {p0}, Lcom/ea/nimble/BaseCore;->loadConfiguration()V

    .line 39
    new-instance v10, Lcom/ea/nimble/ComponentManager;

    invoke-direct {v10}, Lcom/ea/nimble/ComponentManager;-><init>()V

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    .line 42
    new-instance v10, Lcom/ea/nimble/ApplicationLifecycleImpl;

    invoke-direct {v10, p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

    .line 43
    new-instance v10, Lcom/ea/nimble/ApplicationEnvironmentImpl;

    invoke-direct {v10, p0}, Lcom/ea/nimble/ApplicationEnvironmentImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    .line 44
    invoke-static {}, Lcom/ea/nimble/Log;->getComponent()Lcom/ea/nimble/ILog;

    move-result-object v10

    check-cast v10, Lcom/ea/nimble/LogImpl;

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    .line 45
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    invoke-virtual {v10, p0}, Lcom/ea/nimble/LogImpl;->connectToCore(Lcom/ea/nimble/BaseCore;)V

    .line 46
    new-instance v10, Lcom/ea/nimble/PersistenceServiceImpl;

    invoke-direct {v10}, Lcom/ea/nimble/PersistenceServiceImpl;-><init>()V

    iput-object v10, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    .line 48
    new-instance v5, Lcom/ea/nimble/NetworkImpl;

    invoke-direct {v5}, Lcom/ea/nimble/NetworkImpl;-><init>()V

    .line 49
    .local v5, "network":Lcom/ea/nimble/NetworkImpl;
    new-instance v7, Lcom/ea/nimble/SynergyEnvironmentImpl;

    invoke-direct {v7, p0}, Lcom/ea/nimble/SynergyEnvironmentImpl;-><init>(Lcom/ea/nimble/BaseCore;)V

    .line 50
    .local v7, "synergyEnvironment":Lcom/ea/nimble/SynergyEnvironmentImpl;
    new-instance v9, Lcom/ea/nimble/SynergyNetworkImpl;

    invoke-direct {v9}, Lcom/ea/nimble/SynergyNetworkImpl;-><init>()V

    .line 51
    .local v9, "synergyNetwork":Lcom/ea/nimble/SynergyNetworkImpl;
    new-instance v8, Lcom/ea/nimble/SynergyIdManagerImpl;

    invoke-direct {v8}, Lcom/ea/nimble/SynergyIdManagerImpl;-><init>()V

    .line 52
    .local v8, "synergyIdManager":Lcom/ea/nimble/SynergyIdManagerImpl;
    new-instance v6, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;

    invoke-direct {v6}, Lcom/ea/nimble/OperationalTelemetryDispatchImpl;-><init>()V

    .line 55
    .local v6, "otDispatch":Lcom/ea/nimble/OperationalTelemetryDispatchImpl;
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v11, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    const-string v12, "com.ea.nimble.applicationEnvironment"

    invoke-virtual {v10, v11, v12}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 56
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v11, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    const-string v12, "com.ea.nimble.NimbleLog"

    invoke-virtual {v10, v11, v12}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 57
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    iget-object v11, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    const-string v12, "com.ea.nimble.persistence"

    invoke-virtual {v10, v11, v12}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 58
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v11, "com.ea.nimble.network"

    invoke-virtual {v10, v5, v11}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 59
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v11, "com.ea.nimble.synergyidmanager"

    invoke-virtual {v10, v8, v11}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 60
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v11, "com.ea.nimble.synergyEnvironment"

    invoke-virtual {v10, v7, v11}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 61
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v11, "com.ea.nimble.synergynetwork"

    invoke-virtual {v10, v9, v11}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 62
    iget-object v10, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    const-string v11, "com.ea.nimble.operationaltelemetrydispatch"

    invoke-virtual {v10, v6, v11}, Lcom/ea/nimble/ComponentManager;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 64
    const-string v10, "setting::components"

    invoke-virtual {p0, v10}, Lcom/ea/nimble/BaseCore;->getSettings(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 66
    .local v1, "components":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 71
    .local v0, "component":Ljava/lang/String;
    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v11

    const-string v12, "initialize"

    const/4 v13, 0x0

    new-array v13, v13, [Ljava/lang/Class;

    invoke-virtual {v11, v12, v13}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 72
    .local v4, "initializeMethod":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    invoke-virtual {v4, v11}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 73
    const/4 v11, 0x0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v4, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    goto :goto_0

    .line 75
    .end local v4    # "initializeMethod":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Ljava/lang/NullPointerException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".initialize() should be static"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 79
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v3

    .line 81
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".initialize() should take no arguments"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 83
    .end local v3    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v3

    .line 85
    .local v3, "e":Ljava/lang/IllegalAccessException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".initialize() is not accessible"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 87
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 89
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".initialize() threw an exception"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto/16 :goto_0

    .line 92
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 94
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "No method "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ".initialize()"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 96
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_5
    move-exception v3

    .line 98
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Component "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " not found"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {p0, v11, v12}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 105
    .end local v0    # "component":Ljava/lang/String;
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    :try_start_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v10

    invoke-interface {v10}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 107
    .local v2, "ctx":Landroid/content/Context;
    invoke-direct {p0, v2}, Lcom/ea/nimble/BaseCore;->isAppSigned(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 108
    const-string v10, "Nimble"

    const-string v11, "This application is NOT signed with a valid certificate. MTX may not work correctly with this application"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    .end local v2    # "ctx":Landroid/content/Context;
    :goto_1
    return-void

    .line 112
    .restart local v2    # "ctx":Landroid/content/Context;
    :cond_1
    const-string v10, "Nimble"

    const-string v11, "This application is signed with a valid certificate."

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_6

    goto :goto_1

    .line 116
    .end local v2    # "ctx":Landroid/content/Context;
    :catch_6
    move-exception v3

    .line 117
    .local v3, "e":Ljava/lang/Exception;
    const-string v10, "Nimble"

    const-string v11, "Unable to verify application signature. Message: %s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method protected static injectMock(Lcom/ea/nimble/BaseCore;)V
    .locals 2
    .param p0, "mock"    # Lcom/ea/nimble/BaseCore;

    .prologue
    const/4 v1, 0x0

    .line 369
    if-nez p0, :cond_0

    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    .line 372
    sput-boolean v1, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    sput-object p0, Lcom/ea/nimble/BaseCore;->s_core:Lcom/ea/nimble/BaseCore;

    .line 377
    sput-boolean v1, Lcom/ea/nimble/BaseCore;->s_coreDestroyed:Z

    goto :goto_0
.end method

.method private isAppSigned(Landroid/content/Context;)Z
    .locals 13
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v9, 0x0

    .line 469
    new-instance v0, Ljavax/security/auth/x500/X500Principal;

    const-string v10, "CN=Android Debug,O=Android,C=US"

    invoke-direct {v0, v10}, Ljavax/security/auth/x500/X500Principal;-><init>(Ljava/lang/String;)V

    .line 470
    .local v0, "DEBUG_DN":Ljavax/security/auth/x500/X500Principal;
    const/4 v3, 0x0

    .line 474
    .local v3, "debuggable":Z
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x40

    invoke-virtual {v10, v11, v12}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v5

    .line 478
    .local v5, "pinfo":Landroid/content/pm/PackageInfo;
    iget-object v7, v5, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 481
    .local v7, "signatures":[Landroid/content/pm/Signature;
    array-length v11, v7

    move v10, v9

    :goto_0
    if-ge v10, v11, :cond_0

    aget-object v6, v7, v10

    .line 483
    .local v6, "sign":Landroid/content/pm/Signature;
    const-string v12, "X.509"

    invoke-static {v12}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 486
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v6}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 489
    .local v8, "stream":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v8}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v1

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 492
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result v3

    .line 493
    if-eqz v3, :cond_2

    .line 515
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sign":Landroid/content/pm/Signature;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    .end local v8    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_0
    :goto_1
    if-nez v3, :cond_1

    const/4 v9, 0x1

    :cond_1
    return v9

    .line 481
    .restart local v1    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .restart local v6    # "sign":Landroid/content/pm/Signature;
    .restart local v7    # "signatures":[Landroid/content/pm/Signature;
    .restart local v8    # "stream":Ljava/io/ByteArrayInputStream;
    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 501
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v5    # "pinfo":Landroid/content/pm/PackageInfo;
    .end local v6    # "sign":Landroid/content/pm/Signature;
    .end local v7    # "signatures":[Landroid/content/pm/Signature;
    .end local v8    # "stream":Ljava/io/ByteArrayInputStream;
    :catch_0
    move-exception v4

    .line 502
    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v4}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 505
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :catch_1
    move-exception v4

    .line 506
    .local v4, "e":Ljava/security/cert/CertificateException;
    invoke-virtual {v4}, Ljava/security/cert/CertificateException;->printStackTrace()V

    goto :goto_1

    .line 509
    .end local v4    # "e":Ljava/security/cert/CertificateException;
    :catch_2
    move-exception v4

    .line 510
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method private loadConfiguration()V
    .locals 5

    .prologue
    .line 426
    :try_start_0
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 427
    .local v2, "pm":Landroid/content/pm/PackageManager;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x80

    invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 428
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.ea.nimble.configuration"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 430
    .local v1, "config":Ljava/lang/String;
    invoke-static {v1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 432
    invoke-static {v1}, Lcom/ea/nimble/NimbleConfiguration;->fromName(Ljava/lang/String;)Lcom/ea/nimble/NimbleConfiguration;

    move-result-object v3

    iput-object v3, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    .line 433
    iget-object v3, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    sget-object v4, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    sget-object v4, Lcom/ea/nimble/NimbleConfiguration;->CUSTOMIZED:Lcom/ea/nimble/NimbleConfiguration;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eq v3, v4, :cond_0

    .line 453
    .end local v0    # "ai":Landroid/content/pm/ApplicationInfo;
    .end local v1    # "config":Ljava/lang/String;
    .end local v2    # "pm":Landroid/content/pm/PackageManager;
    :goto_0
    return-void

    .line 439
    :catch_0
    move-exception v3

    .line 449
    :cond_0
    const-string v3, "Nimble"

    const-string v4, "WARNING! Cannot find valid NimbleConfiguration from AndroidManifest.xml"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    sget-object v3, Lcom/ea/nimble/NimbleConfiguration;->LIVE:Lcom/ea/nimble/NimbleConfiguration;

    iput-object v3, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    goto :goto_0
.end method


# virtual methods
.method public activeValidate()Lcom/ea/nimble/BaseCore;
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 198
    sget-object v1, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v2, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v2}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 211
    .end local p0    # "this":Lcom/ea/nimble/BaseCore;
    :goto_0
    return-object p0

    .line 202
    .restart local p0    # "this":Lcom/ea/nimble/BaseCore;
    :pswitch_0
    const-string v1, "Access NimbleBaseCore before setup, call setupNimble() explicitly to activate it."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    .line 203
    goto :goto_0

    .line 205
    :pswitch_1
    const-string v1, "Access NimbleBaseCore after clean up, call setupNimble() explicitly again to activate it."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    .line 206
    goto :goto_0

    .line 208
    :pswitch_2
    const-string v1, "Accessing component after destroy, only static components are available right now."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    move-object p0, v0

    .line 209
    goto :goto_0

    .line 198
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getApplicationEnvironment()Lcom/ea/nimble/IApplicationEnvironment;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_applicationEnvironment:Lcom/ea/nimble/ApplicationEnvironmentImpl;

    return-object v0
.end method

.method public getApplicationLifecycle()Lcom/ea/nimble/IApplicationLifecycle;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_applicationLifecycle:Lcom/ea/nimble/IApplicationLifecycle;

    return-object v0
.end method

.method public getComponentManager()Lcom/ea/nimble/ComponentManager;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    return-object v0
.end method

.method public getConfiguration()Lcom/ea/nimble/NimbleConfiguration;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_configuration:Lcom/ea/nimble/NimbleConfiguration;

    return-object v0
.end method

.method public getLog()Lcom/ea/nimble/ILog;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_log:Lcom/ea/nimble/LogImpl;

    return-object v0
.end method

.method public getPersistenceService()Lcom/ea/nimble/IPersistenceService;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_persistenceService:Lcom/ea/nimble/PersistenceServiceImpl;

    return-object v0
.end method

.method public getSettings(Ljava/lang/String;)Ljava/util/Map;
    .locals 6
    .param p1, "settingId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 128
    const-string v3, "setting::log"

    if-ne p1, v3, :cond_2

    .line 130
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "nimble_log"

    const-string v5, "xml"

    .line 132
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 133
    .local v1, "resourceId":I
    if-nez v1, :cond_1

    .line 150
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resourceId":I
    :cond_0
    :goto_0
    return-object v2

    .line 137
    .restart local v0    # "packageName":Ljava/lang/String;
    .restart local v1    # "resourceId":I
    :cond_1
    invoke-static {v1}, Lcom/ea/nimble/Utility;->parseXmlFile(I)Ljava/util/Map;

    move-result-object v2

    goto :goto_0

    .line 139
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resourceId":I
    :cond_2
    const-string v3, "setting::components"

    if-ne p1, v3, :cond_0

    .line 141
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 142
    .restart local v0    # "packageName":Ljava/lang/String;
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getComponent()Lcom/ea/nimble/IApplicationEnvironment;

    move-result-object v3

    invoke-interface {v3}, Lcom/ea/nimble/IApplicationEnvironment;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "components"

    const-string v5, "xml"

    .line 143
    invoke-virtual {v3, v4, v5, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 144
    .restart local v1    # "resourceId":I
    if-eqz v1, :cond_0

    .line 148
    invoke-static {v1}, Lcom/ea/nimble/Utility;->parseXmlFile(I)Ljava/util/Map;

    move-result-object v2

    goto :goto_0
.end method

.method public isActive()Z
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onApplicationLaunch(Landroid/content/Intent;)V
    .locals 3
    .param p1, "options"    # Landroid/content/Intent;

    .prologue
    .line 301
    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v2, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v2, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    if-ne v1, v2, :cond_1

    .line 303
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v1}, Lcom/ea/nimble/ComponentManager;->setup()V

    .line 305
    const-string v1, "nimble.notification.componentIndependentSetupFinished"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 306
    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v1}, Lcom/ea/nimble/ComponentManager;->restore()V
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    :cond_1
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 313
    .local v0, "e":Ljava/lang/AssertionError;
    sget-object v1, Lcom/ea/nimble/BaseCore$State;->INACTIVE:Lcom/ea/nimble/BaseCore$State;

    iput-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 314
    throw v0
.end method

.method public onApplicationQuit()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 339
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 365
    :goto_0
    :pswitch_0
    return-void

    .line 346
    :pswitch_1
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    goto :goto_0

    .line 352
    :pswitch_2
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    goto :goto_0

    .line 358
    :pswitch_3
    const-string v0, "No app start before app quit, something must be wrong."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 362
    :pswitch_4
    const-string v0, "Double app quit, something must be wrong."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 339
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_4
    .end packed-switch
.end method

.method public onApplicationResume()V
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_1

    .line 333
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->resume()V

    .line 335
    :cond_1
    return-void
.end method

.method public onApplicationSuspend()V
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    sget-object v1, Lcom/ea/nimble/BaseCore$State;->AUTO_SETUP:Lcom/ea/nimble/BaseCore$State;

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->suspend()V

    .line 326
    :cond_1
    return-void
.end method

.method public restartWithConfiguration(Lcom/ea/nimble/NimbleConfiguration;)V
    .locals 3
    .param p1, "configuration"    # Lcom/ea/nimble/NimbleConfiguration;

    .prologue
    const/4 v2, 0x0

    .line 261
    const-string v0, ">>>>>>>>>>>>>>>>>>>>>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 262
    const-string v0, "restartWithConfiguration should not be used in an integration. This function is for QA testing purposes."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 263
    const-string v0, ">>>>>>>>>>>>>>>>>>>>>>"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 265
    sget-object v0, Lcom/ea/nimble/NimbleConfiguration;->UNKNOWN:Lcom/ea/nimble/NimbleConfiguration;

    if-ne p1, v0, :cond_0

    .line 267
    const-string v0, "Cannot restart nimble with unknown configuration"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    :goto_0
    return-void

    .line 272
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ea/nimble/BaseCore$1;

    invoke-direct {v1, p0, p1}, Lcom/ea/nimble/BaseCore$1;-><init>(Lcom/ea/nimble/BaseCore;Lcom/ea/nimble/NimbleConfiguration;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 217
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 235
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->setup()V

    .line 222
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 224
    const-string v0, "nimble.notification.componentIndependentSetupFinished"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->sendBroadcast(Ljava/lang/String;Ljava/util/Map;)V

    .line 225
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->restore()V

    goto :goto_0

    .line 228
    :pswitch_1
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_SETUP:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    goto :goto_0

    .line 233
    :pswitch_2
    const-string v0, "Multiple setupNimble() calls without teardownNimble()."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public teardown()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 239
    sget-object v0, Lcom/ea/nimble/BaseCore$2;->$SwitchMap$com$ea$nimble$BaseCore$State:[I

    iget-object v1, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 257
    :goto_0
    return-void

    .line 242
    :pswitch_0
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->cleanup()V

    .line 243
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->MANUAL_TEARDOWN:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 244
    iget-object v0, p0, Lcom/ea/nimble/BaseCore;->m_componentManager:Lcom/ea/nimble/ComponentManager;

    invoke-virtual {v0}, Lcom/ea/nimble/ComponentManager;->teardown()V

    goto :goto_0

    .line 247
    :pswitch_1
    sget-object v0, Lcom/ea/nimble/BaseCore$State;->DESTROY:Lcom/ea/nimble/BaseCore$State;

    iput-object v0, p0, Lcom/ea/nimble/BaseCore;->m_state:Lcom/ea/nimble/BaseCore$State;

    .line 248
    invoke-direct {p0}, Lcom/ea/nimble/BaseCore;->destroy()V

    goto :goto_0

    .line 252
    :pswitch_2
    const-string v0, "Cannot teardownNimble() before setupNimble()."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 255
    :pswitch_3
    const-string v0, "Multiple teardownNimble() calls without setupNibmle()."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGF(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 239
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

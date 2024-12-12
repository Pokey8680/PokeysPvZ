.class Lcom/ea/nimble/FacebookImpl;
.super Lcom/ea/nimble/Component;
.source "FacebookImpl.java"

# interfaces
.implements Lcom/ea/nimble/IFacebook;
.implements Lcom/ea/nimble/LogSource;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
.implements Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;


# static fields
.field private static TAG:Ljava/lang/String;

.field static bHasSeenOpening:Z

.field private static m_callbackQueue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/IFacebook$FacebookCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static m_sessionCallback:Lcom/facebook/Session$StatusCallback;


# instance fields
.field private isUserGraphReady:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private m_fbHelpers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Lcom/facebook/UiLifecycleHelper;",
            ">;"
        }
    .end annotation
.end field

.field private userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-string v0, "Facebook"

    sput-object v0, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/ea/nimble/FacebookImpl;->m_callbackQueue:Ljava/util/List;

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 51
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ea/nimble/FacebookImpl;->userInfo:Ljava/util/Map;

    .line 53
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/ea/nimble/FacebookImpl;->isUserGraphReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/FacebookImpl;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/FacebookImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl;->userInfo:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$002(Lcom/ea/nimble/FacebookImpl;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .param p0, "x0"    # Lcom/ea/nimble/FacebookImpl;
    .param p1, "x1"    # Ljava/util/Map;

    .prologue
    .line 42
    iput-object p1, p0, Lcom/ea/nimble/FacebookImpl;->userInfo:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$100(Lcom/ea/nimble/FacebookImpl;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/FacebookImpl;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl;->isUserGraphReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/ea/nimble/FacebookImpl;->m_callbackQueue:Ljava/util/List;

    return-object v0
.end method

.method private getFacebookSDKVersion()Ljava/lang/String;
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 79
    const/4 v4, 0x0

    .line 80
    .local v4, "sdkVersion":Ljava/lang/String;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 84
    .local v0, "classLoader":Ljava/lang/ClassLoader;
    :try_start_0
    const-string v5, "com.facebook.FacebookSdkVersion"

    invoke-virtual {v0, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 85
    .local v1, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v5, "BUILD"

    invoke-virtual {v1, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 86
    .local v3, "field":Ljava/lang/reflect/Field;
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v4

    .line 104
    .end local v1    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v4

    .line 88
    :catch_0
    move-exception v2

    .line 90
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    sget-object v5, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get FB SDK version."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 92
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v2

    .line 94
    .local v2, "e":Ljava/lang/NoSuchFieldException;
    sget-object v5, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get FB SDK version."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 96
    .end local v2    # "e":Ljava/lang/NoSuchFieldException;
    :catch_2
    move-exception v2

    .line 98
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    sget-object v5, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get FB SDK version."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 100
    .end local v2    # "e":Ljava/lang/IllegalArgumentException;
    :catch_3
    move-exception v2

    .line 102
    .local v2, "e":Ljava/lang/IllegalAccessException;
    sget-object v5, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    const-string v6, "Unable to get FB SDK version."

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected cleanup()V
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    .line 308
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    .line 309
    return-void
.end method

.method public getAccessToken()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 326
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 328
    invoke-virtual {v0}, Lcom/facebook/Session;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    .line 330
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getApplicationId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 347
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 348
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 350
    invoke-virtual {v0}, Lcom/facebook/Session;->getApplicationId()Ljava/lang/String;

    move-result-object v1

    .line 352
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 64
    const-string v0, "com.ea.nimble.facebook"

    return-object v0
.end method

.method public getExpirationDate()Ljava/util/Date;
    .locals 2

    .prologue
    .line 336
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 337
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 339
    invoke-virtual {v0}, Lcom/facebook/Session;->getExpirationDate()Ljava/util/Date;

    move-result-object v1

    .line 341
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getGraphUser()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl;->isUserGraphReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lcom/ea/nimble/FacebookImpl;->userInfo:Ljava/util/Map;

    .line 482
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    const-string v0, "Facebook"

    return-object v0
.end method

.method public hasOpenSession()Z
    .locals 2

    .prologue
    .line 314
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 315
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 317
    invoke-virtual {v0}, Lcom/facebook/Session;->isOpened()Z

    move-result v1

    .line 319
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public login(Ljava/util/List;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
    .locals 5
    .param p2, "callback"    # Lcom/ea/nimble/IFacebook$FacebookCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/IFacebook$FacebookCallback;",
            ")V"
        }
    .end annotation

    .prologue
    .line 392
    .local p1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v2

    .line 393
    .local v2, "session":Lcom/facebook/Session;
    if-eqz v2, :cond_1

    .line 395
    invoke-virtual {v2}, Lcom/facebook/Session;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/facebook/internal/Utility;->isSubset(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 398
    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {p2, p0, v3, v4}, Lcom/ea/nimble/IFacebook$FacebookCallback;->callback(Lcom/ea/nimble/IFacebook;ZLjava/lang/Exception;)V

    .line 420
    :goto_0
    return-void

    .line 401
    :cond_0
    sget-object v3, Lcom/ea/nimble/FacebookImpl;->m_sessionCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v2, v3}, Lcom/facebook/Session;->removeCallback(Lcom/facebook/Session$StatusCallback;)V

    .line 405
    :cond_1
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    .line 408
    .local v0, "activity":Landroid/app/Activity;
    new-instance v2, Lcom/facebook/Session;

    .end local v2    # "session":Lcom/facebook/Session;
    invoke-direct {v2, v0}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 409
    .restart local v2    # "session":Lcom/facebook/Session;
    invoke-static {v2}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 412
    new-instance v1, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v1, v0}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 413
    .local v1, "request":Lcom/facebook/Session$OpenRequest;
    invoke-virtual {v1, p1}, Lcom/facebook/Session$OpenRequest;->setPermissions(Ljava/util/List;)Lcom/facebook/Session$OpenRequest;

    .line 414
    if-eqz p2, :cond_2

    .line 416
    sget-object v3, Lcom/ea/nimble/FacebookImpl;->m_callbackQueue:Ljava/util/List;

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_2
    sget-object v3, Lcom/ea/nimble/FacebookImpl;->m_sessionCallback:Lcom/facebook/Session$StatusCallback;

    invoke-virtual {v1, v3}, Lcom/facebook/Session$OpenRequest;->setCallback(Lcom/facebook/Session$StatusCallback;)Lcom/facebook/Session$OpenRequest;

    .line 419
    invoke-virtual {v2, v1}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    goto :goto_0
.end method

.method public logout()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 425
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v0

    .line 426
    .local v0, "session":Lcom/facebook/Session;
    if-eqz v0, :cond_0

    .line 428
    invoke-virtual {v0}, Lcom/facebook/Session;->closeAndClearTokenInformation()V

    .line 429
    invoke-static {v1}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 432
    :cond_0
    iput-object v1, p0, Lcom/ea/nimble/FacebookImpl;->userInfo:Ljava/util/Map;

    .line 433
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->isUserGraphReady:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 434
    return-void
.end method

.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 228
    iget-object v5, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v5, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/UiLifecycleHelper;

    .line 229
    .local v2, "helper":Lcom/facebook/UiLifecycleHelper;
    if-nez v2, :cond_0

    .line 231
    new-instance v2, Lcom/facebook/UiLifecycleHelper;

    .end local v2    # "helper":Lcom/facebook/UiLifecycleHelper;
    sget-object v5, Lcom/ea/nimble/FacebookImpl;->m_sessionCallback:Lcom/facebook/Session$StatusCallback;

    invoke-direct {v2, p1, v5}, Lcom/facebook/UiLifecycleHelper;-><init>(Landroid/app/Activity;Lcom/facebook/Session$StatusCallback;)V

    .line 232
    .restart local v2    # "helper":Lcom/facebook/UiLifecycleHelper;
    iget-object v5, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v5, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    :cond_0
    invoke-virtual {v2, p2}, Lcom/facebook/UiLifecycleHelper;->onCreate(Landroid/os/Bundle;)V

    .line 237
    invoke-virtual {p0}, Lcom/ea/nimble/FacebookImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "accessToken":Ljava/lang/String;
    invoke-static {v0}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/ea/nimble/FacebookImpl;->hasOpenSession()Z

    move-result v5

    if-nez v5, :cond_1

    .line 240
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    .line 242
    .local v1, "environmentActivity":Landroid/app/Activity;
    new-instance v4, Lcom/facebook/Session;

    invoke-direct {v4, v1}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 243
    .local v4, "session":Lcom/facebook/Session;
    invoke-static {v4}, Lcom/facebook/Session;->setActiveSession(Lcom/facebook/Session;)V

    .line 245
    new-instance v3, Lcom/facebook/Session$OpenRequest;

    invoke-direct {v3, v1}, Lcom/facebook/Session$OpenRequest;-><init>(Landroid/app/Activity;)V

    .line 246
    .local v3, "request":Lcom/facebook/Session$OpenRequest;
    invoke-virtual {v4, v3}, Lcom/facebook/Session;->openForRead(Lcom/facebook/Session$OpenRequest;)V

    .line 248
    .end local v1    # "environmentActivity":Landroid/app/Activity;
    .end local v3    # "request":Lcom/facebook/Session$OpenRequest;
    .end local v4    # "session":Lcom/facebook/Session;
    :cond_1
    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 253
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/UiLifecycleHelper;

    .line 254
    .local v0, "helper":Lcom/facebook/UiLifecycleHelper;
    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onDestroy()V

    .line 258
    :cond_0
    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 263
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/UiLifecycleHelper;

    .line 264
    .local v0, "helper":Lcom/facebook/UiLifecycleHelper;
    if-eqz v0, :cond_0

    .line 266
    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onPause()V

    .line 268
    :cond_0
    return-void
.end method

.method public onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "requestCode"    # I
    .param p3, "resultCode"    # I
    .param p4, "data"    # Landroid/content/Intent;

    .prologue
    .line 206
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/UiLifecycleHelper;

    .line 207
    .local v0, "helper":Lcom/facebook/UiLifecycleHelper;
    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0, p2, p3, p4}, Lcom/facebook/UiLifecycleHelper;->onActivityResult(IILandroid/content/Intent;)V

    .line 211
    :cond_0
    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 273
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/UiLifecycleHelper;

    .line 274
    .local v0, "helper":Lcom/facebook/UiLifecycleHelper;
    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {v0}, Lcom/facebook/UiLifecycleHelper;->onResume()V

    .line 278
    :cond_0
    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 283
    iget-object v1, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/UiLifecycleHelper;

    .line 284
    .local v0, "helper":Lcom/facebook/UiLifecycleHelper;
    if-eqz v0, :cond_0

    .line 286
    invoke-virtual {v0, p2}, Lcom/facebook/UiLifecycleHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 288
    :cond_0
    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 294
    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 0
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 300
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 217
    return-void
.end method

.method public refreshSession(Ljava/lang/String;Ljava/util/Date;)V
    .locals 8
    .param p1, "accessToken"    # Ljava/lang/String;
    .param p2, "expirationDate"    # Ljava/util/Date;

    .prologue
    .line 358
    invoke-virtual {p0}, Lcom/ea/nimble/FacebookImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz p2, :cond_0

    .line 359
    invoke-virtual {p0}, Lcom/ea/nimble/FacebookImpl;->getExpirationDate()Ljava/util/Date;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 364
    :cond_1
    const-string v4, "Refresh Facebook token from %s to %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/ea/nimble/FacebookImpl;->getAccessToken()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {p0, v4, v5}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    invoke-static {}, Lcom/facebook/Session;->getActiveSession()Lcom/facebook/Session;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/Session;->getPermissions()Ljava/util/List;

    move-result-object v1

    .line 367
    .local v1, "permissions":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    sget-object v5, Lcom/facebook/AccessTokenSource;->CLIENT_TOKEN:Lcom/facebook/AccessTokenSource;

    invoke-static {p1, p2, v4, v5, v1}, Lcom/facebook/AccessToken;->createFromExistingAccessToken(Ljava/lang/String;Ljava/util/Date;Ljava/util/Date;Lcom/facebook/AccessTokenSource;Ljava/util/List;)Lcom/facebook/AccessToken;

    move-result-object v3

    .line 368
    .local v3, "tokenInfo":Lcom/facebook/AccessToken;
    new-instance v2, Lcom/ea/nimble/FacebookImpl$2;

    invoke-direct {v2, p0, p1}, Lcom/ea/nimble/FacebookImpl$2;-><init>(Lcom/ea/nimble/FacebookImpl;Ljava/lang/String;)V

    .line 384
    .local v2, "sessionCallback":Lcom/facebook/Session$StatusCallback;
    new-instance v0, Lcom/facebook/Session;

    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v0, v4}, Lcom/facebook/Session;-><init>(Landroid/content/Context;)V

    .line 385
    .local v0, "newSession":Lcom/facebook/Session;
    invoke-virtual {v0, v3, v2}, Lcom/facebook/Session;->open(Lcom/facebook/AccessToken;Lcom/facebook/Session$StatusCallback;)V

    goto :goto_0
.end method

.method protected restore()V
    .locals 1

    .prologue
    .line 197
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V

    .line 198
    invoke-static {}, Lcom/ea/nimble/ApplicationLifecycle;->getComponent()Lcom/ea/nimble/IApplicationLifecycle;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/ea/nimble/IApplicationLifecycle;->registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V

    .line 199
    return-void
.end method

.method public retrieveCurrentUserProfile(Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V
    .locals 0
    .param p1, "callback"    # Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    .prologue
    .line 546
    return-void
.end method

.method public retrieveFriends(IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V
    .locals 2
    .param p1, "offset"    # I
    .param p2, "limit"    # I
    .param p3, "callback"    # Lcom/ea/nimble/IFacebook$FacebookFriendsCallback;

    .prologue
    .line 489
    if-nez p3, :cond_0

    .line 541
    :goto_0
    return-void

    .line 494
    :cond_0
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/ea/nimble/FacebookImpl$4;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/ea/nimble/FacebookImpl$4;-><init>(Lcom/ea/nimble/FacebookImpl;IILcom/ea/nimble/IFacebook$FacebookFriendsCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public sendAppRequest(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/IFacebook$FacebookCallback;)V
    .locals 7
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "message"    # Ljava/lang/String;
    .param p4, "callback"    # Lcom/ea/nimble/IFacebook$FacebookCallback;

    .prologue
    .line 439
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v6

    new-instance v0, Lcom/ea/nimble/FacebookImpl$3;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/ea/nimble/FacebookImpl$3;-><init>(Lcom/ea/nimble/FacebookImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/IFacebook$FacebookCallback;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method protected setup()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 109
    sget-object v0, Lcom/ea/nimble/FacebookImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently using FB SDK version "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/ea/nimble/FacebookImpl;->getFacebookSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    :goto_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/FacebookImpl;->m_fbHelpers:Ljava/util/HashMap;

    .line 119
    sput-boolean v3, Lcom/ea/nimble/FacebookImpl;->bHasSeenOpening:Z

    .line 120
    new-instance v0, Lcom/ea/nimble/FacebookImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/FacebookImpl$1;-><init>(Lcom/ea/nimble/FacebookImpl;)V

    sput-object v0, Lcom/ea/nimble/FacebookImpl;->m_sessionCallback:Lcom/facebook/Session$StatusCallback;

    .line 193
    return-void

    .line 116
    :catch_0
    move-exception v0

    goto :goto_0
.end method

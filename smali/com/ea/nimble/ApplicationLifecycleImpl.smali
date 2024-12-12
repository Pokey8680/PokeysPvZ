.class Lcom/ea/nimble/ApplicationLifecycleImpl;
.super Lcom/ea/nimble/Component;
.source "ApplicationLifecycleImpl.java"

# interfaces
.implements Lcom/ea/nimble/IApplicationLifecycle;
.implements Lcom/ea/nimble/LogSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/ApplicationLifecycleImpl$State;
    }
.end annotation


# static fields
.field private static final RESTART_ON_CONFIG_CHANGE:Z


# instance fields
.field private m_activityEventCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_activityLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_applicationLifecycleCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private m_core:Lcom/ea/nimble/BaseCore;

.field private m_createdActivityCount:I

.field private m_runningActivityCount:I

.field private m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method constructor <init>(Lcom/ea/nimble/BaseCore;)V
    .locals 2
    .param p1, "core"    # Lcom/ea/nimble/BaseCore;

    .prologue
    const/4 v1, 0x0

    .line 17
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    .line 19
    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 20
    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    .line 21
    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    .line 25
    return-void
.end method

.method private notifyApplicationLaunch(Landroid/content/Intent;)V
    .locals 3
    .param p1, "options"    # Landroid/content/Intent;

    .prologue
    .line 444
    const-string v1, "Application launch"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 445
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .line 447
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationLaunch(Landroid/content/Intent;)V

    goto :goto_0

    .line 449
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method private notifyApplicationQuit()V
    .locals 3

    .prologue
    .line 471
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .line 473
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationQuit()V

    goto :goto_0

    .line 475
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    :cond_0
    const-string v1, "Application quit"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 476
    return-void
.end method

.method private notifyApplicationResume()V
    .locals 3

    .prologue
    .line 462
    const-string v1, "Application resume"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 463
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .line 465
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationResume()V

    goto :goto_0

    .line 467
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method private notifyApplicationSuspend()V
    .locals 3

    .prologue
    .line 453
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .line 455
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;->onApplicationSuspend()V

    goto :goto_0

    .line 457
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;
    :cond_0
    const-string v1, "Application suspend"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 458
    return-void
.end method


# virtual methods
.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    const-string v0, "com.ea.nimble.applicationlifecycle"

    return-object v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    const-string v0, "AppLifecycle"

    return-object v0
.end method

.method public handleBackPressed()Z
    .locals 4

    .prologue
    .line 418
    const/4 v1, 0x1

    .line 419
    .local v1, "shouldCallSuper":Z
    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    .line 421
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    invoke-interface {v0}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onBackPressed()Z

    move-result v3

    if-nez v3, :cond_0

    .line 423
    const/4 v1, 0x0

    goto :goto_0

    .line 426
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    :cond_1
    return v1
.end method

.method public notifyActivityCreate(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    const-string v1, "Activity %s CREATE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->INIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_3

    .line 97
    :cond_0
    const-string v1, "Activity created clearly with state %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ea/nimble/BaseCore;->onApplicationLaunch(Landroid/content/Intent;)V

    .line 99
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 101
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 103
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_1
    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationLaunch(Landroid/content/Intent;)V

    .line 104
    iput v5, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    .line 105
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 106
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_2

    .line 108
    const-string v1, "Invalid running acitivity count %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 109
    iput v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    .line 167
    :cond_2
    :goto_1
    const-string v1, "State after created %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 168
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v6

    .line 167
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 169
    return-void

    .line 112
    :cond_3
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_7

    .line 114
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-eq v1, p2, :cond_5

    .line 116
    const-string v1, "Activity created with state CONFIG_CHANGE but different activity %s and %s"

    new-array v2, v6, [Ljava/lang/Object;

    .line 117
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    .line 118
    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    .line 116
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :goto_2
    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v1, :cond_4

    .line 126
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    .line 128
    :cond_4
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 130
    .restart local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_3

    .line 122
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_5
    const-string v1, "Activity created from CONFIG_CHANGE, activity configuration changed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    .line 132
    :cond_6
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_2

    .line 134
    const-string v1, "Invalid running acitivity count %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    iput v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    goto :goto_1

    .line 138
    :cond_7
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_9

    .line 140
    const-string v1, "Activity created from PAUSE, normal activity switch"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 143
    .restart local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_4

    .line 145
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_8
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    goto/16 :goto_1

    .line 147
    :cond_9
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_b

    .line 149
    const-string v1, "Activity created from SUSPEND, external activity switch; (new) app restart"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 150
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    .line 151
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 152
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 154
    .restart local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_5

    .line 156
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_a
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    .line 157
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-eqz v1, :cond_2

    .line 159
    const-string v1, "Invalid running acitivity count %d"

    new-array v2, v5, [Ljava/lang/Object;

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 160
    iput v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    goto/16 :goto_1

    .line 165
    :cond_b
    const-string v1, "Activity created with %s state, shouldn\'t happen"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1
.end method

.method public notifyActivityDestroy(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 372
    const-string v1, "Activity %s DESTROY"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 373
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 375
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityDestroyed(Landroid/app/Activity;)V

    goto :goto_0

    .line 378
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_2

    .line 380
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_1

    .line 382
    const-string v1, "Activity destroy on invalid state %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 384
    :cond_1
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    .line 385
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    if-nez v1, :cond_2

    .line 387
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->QUIT:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 388
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationQuit()V

    .line 389
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationQuit()V

    .line 393
    :cond_2
    const-string v1, "State after destroy %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 394
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 393
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 395
    return-void
.end method

.method public notifyActivityPause(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 277
    const-string v1, "Activity %s PAUSE"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 280
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityPaused(Landroid/app/Activity;)V

    goto :goto_0

    .line 283
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_1

    .line 285
    const-string v1, "Activity pause on invalid state %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    :cond_1
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 289
    const-string v1, "State after pause %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 290
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 289
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 291
    return-void
.end method

.method public notifyActivityRestart(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 174
    const-string v0, "Activity %s RESTART"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 175
    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    .line 177
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v0, v1, :cond_0

    .line 179
    const-string v0, "Activity restart from PAUSE, normal activity switch"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    :goto_0
    const-string v0, "State after restart %s (%d, %d)"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 193
    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    iget v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x2

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 192
    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 194
    return-void

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v0, v1, :cond_1

    .line 183
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v0}, Lcom/ea/nimble/BaseCore;->onApplicationResume()V

    .line 184
    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 185
    const-string v0, "Activity restart from SUSPEND, external activity switch; (new) app restart"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 189
    :cond_1
    const-string v0, "Activity restart with invalid state %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v2}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public notifyActivityRestoreInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 250
    const-string v0, "Activity %s RESTORE_STATE"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    return-void
.end method

.method public notifyActivityResult(IILandroid/content/Intent;Landroid/app/Activity;)V
    .locals 3
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;
    .param p4, "activity"    # Landroid/app/Activity;

    .prologue
    .line 400
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    .line 402
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    invoke-interface {v0, p4, p1, p2, p3}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onActivityResult(Landroid/app/Activity;IILandroid/content/Intent;)V

    goto :goto_0

    .line 404
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    :cond_0
    return-void
.end method

.method public notifyActivityResume(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 256
    const-string v1, "Activity %s RESUME"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 257
    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    .line 258
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 260
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityResumed(Landroid/app/Activity;)V

    goto :goto_0

    .line 263
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_1

    .line 265
    const-string v1, "Activity resume on invalid state %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 266
    const-string v1, "<NOTE>Please double check if the game\'s activity hooks ApplicationLifecycle.onActivityRestart() correctly."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 268
    :cond_1
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 270
    const-string v1, "State after resume %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 271
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 270
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 272
    return-void
.end method

.method public notifyActivityRetainNonConfigurationInstance()V
    .locals 4

    .prologue
    .line 431
    sget-boolean v0, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v0, v1, :cond_0

    .line 435
    const-string v0, "configuration change should happen between onStop() and onDestroy(), but state is %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 436
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 435
    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 438
    :cond_0
    sget-object v0, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 440
    :cond_1
    return-void
.end method

.method public notifyActivitySaveInstanceState(Landroid/os/Bundle;Landroid/app/Activity;)V
    .locals 5
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 296
    const-string v1, "Activity %s SAVE_STATE"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p2}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 297
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 299
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p2, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V

    goto :goto_0

    .line 301
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_0
    return-void
.end method

.method public notifyActivityStart(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 199
    const-string v1, "Activity %s START"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    invoke-static {p1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    .line 202
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->LAUNCH:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_0

    .line 204
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 205
    const-string v1, "Activity start with LAUNCH state, normal app start"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 242
    :goto_0
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    .line 243
    const-string v1, "State after start %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 244
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 243
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    return-void

    .line 207
    :cond_0
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RESUME:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_2

    .line 209
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 211
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_1

    .line 213
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_1
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationResume()V

    .line 214
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 215
    const-string v1, "Activity start with RESUME state, set to PAUSE"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 217
    :cond_2
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_5

    .line 219
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 221
    .restart local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_2

    .line 223
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_3
    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-eqz v1, :cond_4

    .line 225
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationResume()V

    .line 227
    :cond_4
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 228
    const-string v1, "Activity start with CONFIG_CHANGE state, set to PAUSE"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 230
    :cond_5
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_6

    .line 232
    const-string v1, "Activity start with PAUSE state, normal activity switch"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 236
    :cond_6
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 238
    .restart local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStarted(Landroid/app/Activity;)V

    goto :goto_3

    .line 240
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_7
    const-string v1, "Activity start with invalid state %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0
.end method

.method public notifyActivityStop(Landroid/app/Activity;)V
    .locals 6
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 307
    const-string v1, "Activity %s STOP"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/app/Activity;->getLocalClassName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 308
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .line 310
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;->onActivityStopped(Landroid/app/Activity;)V

    goto :goto_0

    .line 313
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;
    :cond_0
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    .line 314
    sget-boolean v1, Lcom/ea/nimble/ApplicationLifecycleImpl;->RESTART_ON_CONFIG_CHANGE:Z

    if-nez v1, :cond_2

    invoke-virtual {p1}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 316
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->CONFIG_CHANGE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 365
    :cond_1
    :goto_1
    const-string v1, "State after stop %s (%d, %d)"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 366
    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_createdActivityCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x2

    iget v4, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 365
    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 367
    return-void

    .line 321
    :cond_2
    iget v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_runningActivityCount:I

    if-nez v1, :cond_5

    .line 323
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_3

    .line 325
    const-string v1, "Interesting case %s, HIGHLIGHT!!"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 327
    :cond_3
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 328
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 330
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationSuspend()V

    .line 331
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationSuspend()V

    .line 357
    :cond_4
    :goto_2
    invoke-static {}, Lcom/ea/nimble/ApplicationEnvironment;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    if-ne v1, p1, :cond_1

    .line 361
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/ea/nimble/ApplicationEnvironment;->setCurrentActivity(Landroid/app/Activity;)V

    goto :goto_1

    .line 335
    :cond_5
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->PAUSE:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-ne v1, v2, :cond_6

    .line 337
    sget-object v1, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->SUSPEND:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    iput-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    .line 338
    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_4

    .line 342
    const-string v1, "running activity count may be messed"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGW(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 343
    invoke-direct {p0}, Lcom/ea/nimble/ApplicationLifecycleImpl;->notifyApplicationSuspend()V

    .line 344
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_core:Lcom/ea/nimble/BaseCore;

    invoke-virtual {v1}, Lcom/ea/nimble/BaseCore;->onApplicationSuspend()V

    goto :goto_2

    .line 348
    :cond_6
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    sget-object v2, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->RUN:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    if-eq v1, v2, :cond_4

    .line 350
    const-string v1, "Activity stop on invalid state %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_state:Lcom/ea/nimble/ApplicationLifecycleImpl$State;

    invoke-virtual {v3}, Lcom/ea/nimble/ApplicationLifecycleImpl$State;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/ea/nimble/Log$Helper;->LOGE(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2
.end method

.method public notifyActivityWindowFocusChanged(ZLandroid/app/Activity;)V
    .locals 3
    .param p1, "hasFocus"    # Z
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 409
    iget-object v1, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    .line 411
    .local v0, "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    invoke-interface {v0, p1}, Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;->onWindowFocusChanged(Z)V

    goto :goto_0

    .line 413
    .end local v0    # "callbacks":Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;
    :cond_0
    return-void
.end method

.method public registerActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    return-void
.end method

.method public registerActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .prologue
    .line 57
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public registerApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    return-void
.end method

.method protected teardown()V
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 50
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 51
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 52
    return-void
.end method

.method public unregisterActivityEventCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ActivityEventCallbacks;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityEventCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 76
    return-void
.end method

.method public unregisterActivityLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ActivityLifecycleCallbacks;

    .prologue
    .line 63
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_activityLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 64
    return-void
.end method

.method public unregisterApplicationLifecycleCallbacks(Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;)V
    .locals 1
    .param p1, "callbacks"    # Lcom/ea/nimble/IApplicationLifecycle$ApplicationLifecycleCallbacks;

    .prologue
    .line 87
    iget-object v0, p0, Lcom/ea/nimble/ApplicationLifecycleImpl;->m_applicationLifecycleCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

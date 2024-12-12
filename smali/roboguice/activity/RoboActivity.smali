.class public Lroboguice/activity/RoboActivity;
.super Landroid/app/Activity;
.source "RoboActivity.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

.field ignored:Lroboguice/inject/ContentViewListener;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

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

.field private stopwatch:Lcom/google/inject/internal/util/Stopwatch;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/activity/RoboActivity;->scopedObjects:Ljava/util/HashMap;

    return-void
.end method

.method protected static injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 211
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-class v6, Landroid/util/AttributeSet;

    aput-object v6, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 212
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 213
    .local v2, "view":Landroid/view/View;
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v3

    invoke-interface {v3, v2}, Lroboguice/inject/RoboInjector;->injectMembers(Ljava/lang/Object;)V

    .line 214
    invoke-static {p1}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v3

    invoke-interface {v3, v2}, Lroboguice/inject/RoboInjector;->injectViewMembers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    return-object v2

    .line 216
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "view":Landroid/view/View;
    :catch_0
    move-exception v1

    .line 217
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method protected static shouldInjectOnCreateView(Ljava/lang/String;)Z
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 206
    const/4 v0, 0x0

    return v0
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
    .line 182
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 176
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    .line 177
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lroboguice/activity/event/OnActivityResultEvent;-><init>(Landroid/app/Activity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 178
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 162
    invoke-virtual {p0}, Lroboguice/activity/RoboActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 163
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 164
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnConfigurationChangedEvent;

    invoke-direct {v2, p0, v0, p1}, Lroboguice/context/event/OnConfigurationChangedEvent;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 165
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 169
    invoke-super {p0}, Landroid/app/Activity;->onContentChanged()V

    .line 170
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectViewMembers(Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnContentChangedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 172
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 89
    new-instance v1, Lcom/google/inject/internal/util/Stopwatch;

    invoke-direct {v1}, Lcom/google/inject/internal/util/Stopwatch;-><init>()V

    iput-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    .line 90
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 91
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    const-string v2, "RoboActivity creation of injector"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 92
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    .line 93
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    const-string v2, "RoboActivity creation of eventmanager"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 94
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 95
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    const-string v2, "RoboActivity inject members without views"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 96
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 97
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    const-string v2, "RoboActivity super onCreate"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnCreateEvent;

    invoke-direct {v2, p0, p1}, Lroboguice/context/event/OnCreateEvent;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 99
    iget-object v1, p0, Lroboguice/activity/RoboActivity;->stopwatch:Lcom/google/inject/internal/util/Stopwatch;

    const-string v2, "RoboActivity fire event"

    invoke-virtual {v1, v2}, Lcom/google/inject/internal/util/Stopwatch;->resetAndLog(Ljava/lang/String;)V

    .line 100
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 196
    invoke-static {p2}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 197
    invoke-static {p2, p3, p4}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 199
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/Activity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 187
    invoke-static {p1}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 188
    invoke-static {p1, p2, p3}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 190
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 150
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnDestroyEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnDestroyEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 153
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 158
    return-void

    .line 155
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0

    .line 152
    :catchall_1
    move-exception v0

    .line 153
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 134
    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    .line 135
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnNewIntentEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 136
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 129
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnPauseEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnPauseEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 130
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 110
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 111
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnRestartEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnRestartEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 112
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 123
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnResumeEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnResumeEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 124
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnSaveInstanceStateEvent;

    invoke-direct {v1, p0, p1}, Lroboguice/activity/event/OnSaveInstanceStateEvent;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 106
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 116
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 117
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnStartEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnStartEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 118
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 141
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStopEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnStopEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 145
    return-void

    .line 143
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    throw v0
.end method

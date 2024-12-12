.class public Lroboguice/activity/RoboListActivity;
.super Landroid/app/ListActivity;
.source "RoboListActivity.java"

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


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/activity/RoboListActivity;->scopedObjects:Ljava/util/HashMap;

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
    .line 157
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 151
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 152
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lroboguice/activity/event/OnActivityResultEvent;-><init>(Landroid/app/Activity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 153
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 137
    invoke-virtual {p0}, Lroboguice/activity/RoboListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 138
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 139
    iget-object v1, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnConfigurationChangedEvent;

    invoke-direct {v2, p0, v0, p1}, Lroboguice/context/event/OnConfigurationChangedEvent;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 140
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 144
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 145
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectViewMembers(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnContentChangedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 147
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 71
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    .line 72
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 73
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    iget-object v1, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnCreateEvent;

    invoke-direct {v2, p0, p1}, Lroboguice/context/event/OnCreateEvent;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 75
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
    .line 171
    invoke-static {p2}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    invoke-static {p2, p3, p4}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 174
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/ListActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 162
    invoke-static {p1}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    invoke-static {p1, p2, p3}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 165
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 125
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnDestroyEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnDestroyEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 128
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 133
    return-void

    .line 130
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    throw v0

    .line 127
    :catchall_1
    move-exception v0

    .line 128
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 130
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 110
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnNewIntentEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Landroid/app/ListActivity;->onPause()V

    .line 104
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnPauseEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnPauseEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 105
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 85
    invoke-super {p0}, Landroid/app/ListActivity;->onRestart()V

    .line 86
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnRestartEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnRestartEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0}, Landroid/app/ListActivity;->onResume()V

    .line 98
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnResumeEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnResumeEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 99
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 79
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 80
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnSaveInstanceStateEvent;

    invoke-direct {v1, p0, p1}, Lroboguice/activity/event/OnSaveInstanceStateEvent;-><init>(Landroid/app/Activity;Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 81
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0}, Landroid/app/ListActivity;->onStart()V

    .line 92
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnStartEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnStartEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 93
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 116
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboListActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStopEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnStopEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    .line 120
    return-void

    .line 118
    :catchall_0
    move-exception v0

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    throw v0
.end method

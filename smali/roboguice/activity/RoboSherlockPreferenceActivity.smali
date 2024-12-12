.class public Lroboguice/activity/RoboSherlockPreferenceActivity;
.super Lcom/actionbarsherlock/app/SherlockPreferenceActivity;
.source "RoboSherlockPreferenceActivity.java"

# interfaces
.implements Lroboguice/util/RoboContext;


# instance fields
.field protected eventManager:Lroboguice/event/EventManager;

.field ignored:Lroboguice/inject/ContentViewListener;
    .annotation runtime Lcom/google/inject/Inject;
    .end annotation
.end field

.field protected preferenceListener:Lroboguice/inject/PreferenceListener;

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
    .line 57
    invoke-direct {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;-><init>()V

    .line 60
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->scopedObjects:Ljava/util/HashMap;

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
    .line 165
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->scopedObjects:Ljava/util/HashMap;

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 159
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 160
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnActivityResultEvent;

    invoke-direct {v1, p0, p1, p2, p3}, Lroboguice/activity/event/OnActivityResultEvent;-><init>(Landroid/app/Activity;IILandroid/content/Intent;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 161
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 145
    invoke-virtual {p0}, Lroboguice/activity/RoboSherlockPreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 146
    .local v0, "currentConfig":Landroid/content/res/Configuration;
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 147
    iget-object v1, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnConfigurationChangedEvent;

    invoke-direct {v2, p0, v0, p1}, Lroboguice/context/event/OnConfigurationChangedEvent;-><init>(Landroid/content/Context;Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 148
    return-void
.end method

.method public onContentChanged()V
    .locals 2

    .prologue
    .line 152
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onContentChanged()V

    .line 153
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectViewMembers(Ljava/lang/Object;)V

    .line 154
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnContentChangedEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnContentChangedEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 155
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 67
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v0

    .line 68
    .local v0, "injector":Lroboguice/inject/RoboInjector;
    const-class v1, Lroboguice/event/EventManager;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/event/EventManager;

    iput-object v1, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    .line 69
    const-class v1, Lroboguice/inject/PreferenceListener;

    invoke-interface {v0, v1}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lroboguice/inject/PreferenceListener;

    iput-object v1, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->preferenceListener:Lroboguice/inject/PreferenceListener;

    .line 70
    invoke-interface {v0, p0}, Lroboguice/inject/RoboInjector;->injectMembersWithoutViews(Ljava/lang/Object;)V

    .line 71
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    iget-object v1, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v2, Lroboguice/context/event/OnCreateEvent;

    invoke-direct {v2, p0, p1}, Lroboguice/context/event/OnCreateEvent;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;
    .param p4, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 178
    invoke-static {p2}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p2, p3, p4}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 181
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 170
    invoke-static {p1}, Lroboguice/activity/RoboActivity;->shouldInjectOnCreateView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-static {p1, p2, p3}, Lroboguice/activity/RoboActivity;->injectOnCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 173
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 133
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnDestroyEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnDestroyEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 136
    :try_start_1
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 138
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    .line 141
    return-void

    .line 138
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    throw v0

    .line 135
    :catchall_1
    move-exception v0

    .line 136
    :try_start_2
    invoke-static {p0}, Lroboguice/RoboGuice;->destroyInjector(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 138
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    throw v0

    :catchall_2
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onDestroy()V

    throw v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 118
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnNewIntentEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnNewIntentEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 111
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onPause()V

    .line 112
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnPauseEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnPauseEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 113
    return-void
.end method

.method protected onRestart()V
    .locals 2

    .prologue
    .line 93
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onRestart()V

    .line 94
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnRestartEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnRestartEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 95
    return-void
.end method

.method protected onResume()V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onResume()V

    .line 106
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnResumeEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnResumeEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 99
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStart()V

    .line 100
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/context/event/OnStartEvent;

    invoke-direct {v1, p0}, Lroboguice/context/event/OnStartEvent;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V

    .line 101
    return-void
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 124
    :try_start_0
    iget-object v0, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->eventManager:Lroboguice/event/EventManager;

    new-instance v1, Lroboguice/activity/event/OnStopEvent;

    invoke-direct {v1, p0}, Lroboguice/activity/event/OnStopEvent;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lroboguice/event/EventManager;->fire(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 126
    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStop()V

    .line 128
    return-void

    .line 126
    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->onStop()V

    throw v0
.end method

.method public setPreferenceScreen(Landroid/preference/PreferenceScreen;)V
    .locals 3
    .param p1, "preferenceScreen"    # Landroid/preference/PreferenceScreen;

    .prologue
    .line 78
    invoke-super {p0, p1}, Lcom/actionbarsherlock/app/SherlockPreferenceActivity;->setPreferenceScreen(Landroid/preference/PreferenceScreen;)V

    .line 80
    invoke-static {p0}, Lroboguice/RoboGuice;->getInjector(Landroid/content/Context;)Lroboguice/inject/RoboInjector;

    move-result-object v1

    const-class v2, Lroboguice/inject/ContextScope;

    invoke-interface {v1, v2}, Lroboguice/inject/RoboInjector;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lroboguice/inject/ContextScope;

    .line 81
    .local v0, "scope":Lroboguice/inject/ContextScope;
    const-class v2, Lroboguice/inject/ContextScope;

    monitor-enter v2

    .line 82
    :try_start_0
    invoke-virtual {v0, p0}, Lroboguice/inject/ContextScope;->enter(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 84
    :try_start_1
    iget-object v1, p0, Lroboguice/activity/RoboSherlockPreferenceActivity;->preferenceListener:Lroboguice/inject/PreferenceListener;

    invoke-virtual {v1}, Lroboguice/inject/PreferenceListener;->injectPreferenceViews()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    :try_start_2
    invoke-virtual {v0, p0}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    .line 88
    monitor-exit v2

    .line 89
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0, p0}, Lroboguice/inject/ContextScope;->exit(Landroid/content/Context;)V

    throw v1

    .line 88
    :catchall_1
    move-exception v1

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

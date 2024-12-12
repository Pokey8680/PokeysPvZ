.class public Lcom/ea/nimble/friends/NimbleFriendsImpl;
.super Lcom/ea/nimble/Component;
.source "NimbleFriendsImpl.java"

# interfaces
.implements Lcom/ea/nimble/friends/INimbleFriends;
.implements Lcom/ea/nimble/LogSource;


# instance fields
.field private m_authenticatorLoginChangeReceiver:Landroid/content/BroadcastReceiver;

.field private m_friends:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/ea/nimble/friends/NimbleFriendsListImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/ea/nimble/Component;-><init>()V

    .line 27
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_friends:Ljava/util/Hashtable;

    .line 30
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;

    invoke-direct {v0, p0}, Lcom/ea/nimble/friends/NimbleFriendsImpl$1;-><init>(Lcom/ea/nimble/friends/NimbleFriendsImpl;)V

    iput-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_authenticatorLoginChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/ea/nimble/friends/NimbleFriendsImpl;)Ljava/util/Hashtable;
    .locals 1
    .param p0, "x0"    # Lcom/ea/nimble/friends/NimbleFriendsImpl;

    .prologue
    .line 22
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_friends:Ljava/util/Hashtable;

    return-object v0
.end method

.method private static initialize()V
    .locals 2

    .prologue
    .line 83
    new-instance v0, Lcom/ea/nimble/friends/NimbleFriendsImpl;

    invoke-direct {v0}, Lcom/ea/nimble/friends/NimbleFriendsImpl;-><init>()V

    const-string v1, "com.ea.nimble.friends"

    invoke-static {v0, v1}, Lcom/ea/nimble/Base;->registerComponent(Lcom/ea/nimble/Component;Ljava/lang/String;)V

    .line 84
    return-void
.end method


# virtual methods
.method public cleanup()V
    .locals 2

    .prologue
    .line 130
    const-string v0, "Component cleanup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_authenticatorLoginChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0}, Lcom/ea/nimble/Utility;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    :goto_0
    return-void

    .line 138
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public getComponentId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 153
    const-string v0, "com.ea.nimble.friends"

    return-object v0
.end method

.method public declared-synchronized getFriendsList(Ljava/lang/String;Z)Lcom/ea/nimble/friends/NimbleFriendsList;
    .locals 1
    .param p1, "authenticatorId"    # Ljava/lang/String;
    .param p2, "playedCurrentGameOnly"    # Z

    .prologue
    .line 159
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_friends:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/friends/NimbleFriendsListImpl;

    invoke-virtual {v0, p2}, Lcom/ea/nimble/friends/NimbleFriendsListImpl;->getFriendsList(Z)Lcom/ea/nimble/friends/NimbleFriendsList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 164
    :goto_0
    monitor-exit p0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 159
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getLogSourceTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 147
    const-string v0, "NimbleFriendsService"

    return-object v0
.end method

.method public restore()V
    .locals 2

    .prologue
    .line 106
    const-string v0, "Component restore"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    return-void
.end method

.method public resume()V
    .locals 2

    .prologue
    .line 124
    const-string v0, "Component resume"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 89
    const-string v0, "Component setup"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGD(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    :try_start_0
    const-string v0, "nimble.notification.identity.authentication.update"

    iget-object v1, p0, Lcom/ea/nimble/friends/NimbleFriendsImpl;->m_authenticatorLoginChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, v1}, Lcom/ea/nimble/Utility;->registerReceiver(Ljava/lang/String;Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    :goto_0
    return-void

    .line 97
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public suspend()V
    .locals 2

    .prologue
    .line 118
    const-string v0, "Component suspend"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    return-void
.end method

.method protected teardown()V
    .locals 2

    .prologue
    .line 112
    const-string v0, "Component teardown"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGV(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 113
    return-void
.end method

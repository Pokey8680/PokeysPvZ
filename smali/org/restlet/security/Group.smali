.class public Lorg/restlet/security/Group;
.super Ljava/lang/Object;
.source "Group.java"


# instance fields
.field private volatile description:Ljava/lang/String;

.field private volatile inheritingRoles:Z

.field private final memberGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final memberUsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/User;",
            ">;"
        }
    .end annotation
.end field

.field private volatile name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, v0}, Lorg/restlet/security/Group;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 80
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/restlet/security/Group;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 81
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "inheritingRoles"    # Z

    .prologue
    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    iput-object p1, p0, Lorg/restlet/security/Group;->name:Ljava/lang/String;

    .line 96
    iput-object p2, p0, Lorg/restlet/security/Group;->description:Ljava/lang/String;

    .line 97
    iput-boolean p3, p0, Lorg/restlet/security/Group;->inheritingRoles:Z

    .line 98
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/Group;->memberGroups:Ljava/util/List;

    .line 99
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/Group;->memberUsers:Ljava/util/List;

    .line 100
    return-void
.end method


# virtual methods
.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lorg/restlet/security/Group;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberGroups()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 117
    iget-object v0, p0, Lorg/restlet/security/Group;->memberGroups:Ljava/util/List;

    return-object v0
.end method

.method public getMemberUsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/restlet/security/Group;->memberUsers:Ljava/util/List;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/restlet/security/Group;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isInheritingRoles()Z
    .locals 1

    .prologue
    .line 140
    iget-boolean v0, p0, Lorg/restlet/security/Group;->inheritingRoles:Z

    return v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lorg/restlet/security/Group;->description:Ljava/lang/String;

    .line 151
    return-void
.end method

.method public setInheritingRoles(Z)V
    .locals 0
    .param p1, "inheritingRoles"    # Z

    .prologue
    .line 161
    iput-boolean p1, p0, Lorg/restlet/security/Group;->inheritingRoles:Z

    .line 162
    return-void
.end method

.method public setMemberGroups(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Group;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "memberGroups":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Group;>;"
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberGroups()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 173
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberGroups()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 176
    if-eqz p1, :cond_0

    .line 177
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 180
    :cond_0
    monitor-exit v1

    .line 181
    return-void

    .line 180
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setMemberUsers(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "memberUsers":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/User;>;"
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberUsers()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 192
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberUsers()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 195
    if-eqz p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getMemberUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 199
    :cond_0
    monitor-exit v1

    .line 200
    return-void

    .line 199
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 209
    iput-object p1, p0, Lorg/restlet/security/Group;->name:Ljava/lang/String;

    .line 210
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 214
    invoke-virtual {p0}, Lorg/restlet/security/Group;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

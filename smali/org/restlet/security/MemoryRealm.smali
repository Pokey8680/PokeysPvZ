.class public Lorg/restlet/security/MemoryRealm;
.super Lorg/restlet/security/Realm;
.source "MemoryRealm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/restlet/security/MemoryRealm$1;,
        Lorg/restlet/security/MemoryRealm$DefaultVerifier;,
        Lorg/restlet/security/MemoryRealm$DefaultEnroler;
    }
.end annotation


# instance fields
.field private final roleMappings:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/security/RoleMapping;",
            ">;"
        }
    .end annotation
.end field

.field private final rootGroups:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Group;",
            ">;"
        }
    .end annotation
.end field

.field private final users:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 131
    invoke-direct {p0}, Lorg/restlet/security/Realm;-><init>()V

    .line 132
    new-instance v0, Lorg/restlet/security/MemoryRealm$DefaultVerifier;

    invoke-direct {v0, p0, v1}, Lorg/restlet/security/MemoryRealm$DefaultVerifier;-><init>(Lorg/restlet/security/MemoryRealm;Lorg/restlet/security/MemoryRealm$1;)V

    invoke-virtual {p0, v0}, Lorg/restlet/security/MemoryRealm;->setVerifier(Lorg/restlet/security/Verifier;)V

    .line 133
    new-instance v0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;

    invoke-direct {v0, p0, v1}, Lorg/restlet/security/MemoryRealm$DefaultEnroler;-><init>(Lorg/restlet/security/MemoryRealm;Lorg/restlet/security/MemoryRealm$1;)V

    invoke-virtual {p0, v0}, Lorg/restlet/security/MemoryRealm;->setEnroler(Lorg/restlet/security/Enroler;)V

    .line 134
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/MemoryRealm;->rootGroups:Ljava/util/List;

    .line 135
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/MemoryRealm;->roleMappings:Ljava/util/List;

    .line 136
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/MemoryRealm;->users:Ljava/util/List;

    .line 137
    return-void
.end method

.method private addGroups(Lorg/restlet/security/User;Ljava/util/Set;Lorg/restlet/security/Group;Ljava/util/List;Z)V
    .locals 9
    .param p1, "user"    # Lorg/restlet/security/User;
    .param p3, "currentGroup"    # Lorg/restlet/security/Group;
    .param p5, "inheritOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/security/User;",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Group;",
            ">;",
            "Lorg/restlet/security/Group;",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Group;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .local p2, "userGroups":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Group;>;"
    .local p4, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Group;>;"
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 156
    if-eqz p3, :cond_5

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 157
    invoke-interface {p4, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    invoke-virtual {p3}, Lorg/restlet/security/Group;->getMemberUsers()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 160
    invoke-interface {p2, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 163
    if-eqz p5, :cond_0

    invoke-virtual {p3}, Lorg/restlet/security/Group;->isInheritingRoles()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    move v8, v1

    .line 167
    .local v8, "inherit":Z
    :goto_0
    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v6, v2, -0x2

    .local v6, "i":I
    :goto_1
    if-eqz v8, :cond_4

    if-ltz v6, :cond_4

    .line 168
    invoke-interface {p4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/security/Group;

    .line 169
    .local v3, "group":Lorg/restlet/security/Group;
    invoke-interface {p2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 170
    if-eqz p5, :cond_1

    invoke-virtual {v3}, Lorg/restlet/security/Group;->isInheritingRoles()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_1
    move v8, v1

    .line 167
    :goto_2
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .end local v3    # "group":Lorg/restlet/security/Group;
    .end local v6    # "i":I
    .end local v8    # "inherit":Z
    :cond_2
    move v8, v0

    .line 163
    goto :goto_0

    .restart local v3    # "group":Lorg/restlet/security/Group;
    .restart local v6    # "i":I
    .restart local v8    # "inherit":Z
    :cond_3
    move v8, v0

    .line 170
    goto :goto_2

    .line 174
    .end local v3    # "group":Lorg/restlet/security/Group;
    .end local v6    # "i":I
    .end local v8    # "inherit":Z
    :cond_4
    invoke-virtual {p3}, Lorg/restlet/security/Group;->getMemberGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/security/Group;

    .restart local v3    # "group":Lorg/restlet/security/Group;
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, p4

    move v5, p5

    .line 175
    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/MemoryRealm;->addGroups(Lorg/restlet/security/User;Ljava/util/Set;Lorg/restlet/security/Group;Ljava/util/List;Z)V

    goto :goto_3

    .line 178
    .end local v3    # "group":Lorg/restlet/security/Group;
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_5
    return-void
.end method

.method private getRoleMappings()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/engine/security/RoleMapping;",
            ">;"
        }
    .end annotation

    .prologue
    .line 309
    iget-object v0, p0, Lorg/restlet/security/MemoryRealm;->roleMappings:Ljava/util/List;

    return-object v0
.end method

.method private unmap(Ljava/lang/Object;Lorg/restlet/security/Role;)V
    .locals 3
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "role"    # Lorg/restlet/security/Role;

    .prologue
    .line 416
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 417
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/security/RoleMapping;

    .line 419
    .local v1, "mapping":Lorg/restlet/engine/security/RoleMapping;
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getTarget()Lorg/restlet/security/Role;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 421
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 416
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 424
    .end local v1    # "mapping":Lorg/restlet/engine/security/RoleMapping;
    :cond_1
    return-void
.end method


# virtual methods
.method public findGroups(Lorg/restlet/security/User;)Ljava/util/Set;
    .locals 1
    .param p1, "user"    # Lorg/restlet/security/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/security/User;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 189
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lorg/restlet/security/MemoryRealm;->findGroups(Lorg/restlet/security/User;Z)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public findGroups(Lorg/restlet/security/User;Z)Ljava/util/Set;
    .locals 7
    .param p1, "user"    # Lorg/restlet/security/User;
    .param p2, "inheritOnly"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/security/User;",
            "Z)",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Group;",
            ">;"
        }
    .end annotation

    .prologue
    .line 203
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 207
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Group;>;"
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getRootGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/restlet/security/Group;

    .line 208
    .local v3, "group":Lorg/restlet/security/Group;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .local v4, "stack":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Group;>;"
    move-object v0, p0

    move-object v1, p1

    move v5, p2

    .line 209
    invoke-direct/range {v0 .. v5}, Lorg/restlet/security/MemoryRealm;->addGroups(Lorg/restlet/security/User;Ljava/util/Set;Lorg/restlet/security/Group;Ljava/util/List;Z)V

    goto :goto_0

    .line 212
    .end local v3    # "group":Lorg/restlet/security/Group;
    .end local v4    # "stack":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Group;>;"
    :cond_0
    return-object v2
.end method

.method public findRoles(Ljava/util/Set;)Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Group;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    .local p1, "userGroups":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Group;>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 248
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/security/RoleMapping;

    .line 249
    .local v1, "mapping":Lorg/restlet/engine/security/RoleMapping;
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getSource()Ljava/lang/Object;

    move-result-object v3

    .line 251
    .local v3, "source":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-interface {p1, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 252
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getTarget()Lorg/restlet/security/Role;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 256
    .end local v1    # "mapping":Lorg/restlet/engine/security/RoleMapping;
    .end local v3    # "source":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public findRoles(Lorg/restlet/security/Group;)Ljava/util/Set;
    .locals 5
    .param p1, "userGroup"    # Lorg/restlet/security/Group;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/security/Group;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 223
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 226
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/security/RoleMapping;

    .line 227
    .local v1, "mapping":Lorg/restlet/engine/security/RoleMapping;
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getSource()Ljava/lang/Object;

    move-result-object v3

    .line 229
    .local v3, "source":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 230
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getTarget()Lorg/restlet/security/Role;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 234
    .end local v1    # "mapping":Lorg/restlet/engine/security/RoleMapping;
    .end local v3    # "source":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public findRoles(Lorg/restlet/security/User;)Ljava/util/Set;
    .locals 5
    .param p1, "user"    # Lorg/restlet/security/User;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/restlet/security/User;",
            ")",
            "Ljava/util/Set",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 267
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 270
    .local v2, "result":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/restlet/engine/security/RoleMapping;

    .line 271
    .local v1, "mapping":Lorg/restlet/engine/security/RoleMapping;
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getSource()Ljava/lang/Object;

    move-result-object v3

    .line 273
    .local v3, "source":Ljava/lang/Object;
    if-eqz p1, :cond_0

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 274
    invoke-virtual {v1}, Lorg/restlet/engine/security/RoleMapping;->getTarget()Lorg/restlet/security/Role;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 278
    .end local v1    # "mapping":Lorg/restlet/engine/security/RoleMapping;
    .end local v3    # "source":Ljava/lang/Object;
    :cond_1
    return-object v2
.end method

.method public findUser(Ljava/lang/String;)Lorg/restlet/security/User;
    .locals 4
    .param p1, "userIdentifier"    # Ljava/lang/String;

    .prologue
    .line 289
    const/4 v1, 0x0

    .line 292
    .local v1, "result":Lorg/restlet/security/User;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-nez v1, :cond_1

    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 293
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/security/User;

    .line 295
    .local v2, "user":Lorg/restlet/security/User;
    invoke-virtual {v2}, Lorg/restlet/security/User;->getIdentifier()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 296
    move-object v1, v2

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 300
    .end local v2    # "user":Lorg/restlet/security/User;
    :cond_1
    return-object v1
.end method

.method public getRootGroups()Ljava/util/List;
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
    .line 318
    iget-object v0, p0, Lorg/restlet/security/MemoryRealm;->rootGroups:Ljava/util/List;

    return-object v0
.end method

.method public getUsers()Ljava/util/List;
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
    .line 327
    iget-object v0, p0, Lorg/restlet/security/MemoryRealm;->users:Ljava/util/List;

    return-object v0
.end method

.method public map(Lorg/restlet/security/Group;Lorg/restlet/security/Role;)V
    .locals 2
    .param p1, "group"    # Lorg/restlet/security/Group;
    .param p2, "role"    # Lorg/restlet/security/Role;

    .prologue
    .line 339
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/security/RoleMapping;

    invoke-direct {v1, p1, p2}, Lorg/restlet/engine/security/RoleMapping;-><init>(Ljava/lang/Object;Lorg/restlet/security/Role;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    return-void
.end method

.method public map(Lorg/restlet/security/User;Lorg/restlet/security/Role;)V
    .locals 2
    .param p1, "user"    # Lorg/restlet/security/User;
    .param p2, "role"    # Lorg/restlet/security/Role;

    .prologue
    .line 351
    invoke-direct {p0}, Lorg/restlet/security/MemoryRealm;->getRoleMappings()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/restlet/engine/security/RoleMapping;

    invoke-direct {v1, p1, p2}, Lorg/restlet/engine/security/RoleMapping;-><init>(Ljava/lang/Object;Lorg/restlet/security/Role;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 352
    return-void
.end method

.method public setRootGroups(Ljava/util/List;)V
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
    .line 362
    .local p1, "rootGroups":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Group;>;"
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getRootGroups()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getRootGroups()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 364
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getRootGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 366
    if-eqz p1, :cond_0

    .line 367
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getRootGroups()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 370
    :cond_0
    monitor-exit v1

    .line 371
    return-void

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setUsers(Ljava/util/List;)V
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
    .line 381
    .local p1, "users":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/User;>;"
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 382
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 383
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 385
    if-eqz p1, :cond_0

    .line 386
    invoke-virtual {p0}, Lorg/restlet/security/MemoryRealm;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 389
    :cond_0
    monitor-exit v1

    .line 390
    return-void

    .line 389
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unmap(Lorg/restlet/security/Group;Lorg/restlet/security/Role;)V
    .locals 0
    .param p1, "group"    # Lorg/restlet/security/Group;
    .param p2, "role"    # Lorg/restlet/security/Role;

    .prologue
    .line 402
    invoke-direct {p0, p1, p2}, Lorg/restlet/security/MemoryRealm;->unmap(Ljava/lang/Object;Lorg/restlet/security/Role;)V

    .line 403
    return-void
.end method

.method public unmap(Lorg/restlet/security/User;Lorg/restlet/security/Role;)V
    .locals 0
    .param p1, "user"    # Lorg/restlet/security/User;
    .param p2, "role"    # Lorg/restlet/security/Role;

    .prologue
    .line 436
    invoke-direct {p0, p1, p2}, Lorg/restlet/security/MemoryRealm;->unmap(Ljava/lang/Object;Lorg/restlet/security/Role;)V

    .line 437
    return-void
.end method

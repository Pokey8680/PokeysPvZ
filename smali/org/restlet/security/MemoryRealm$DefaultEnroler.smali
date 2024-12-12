.class Lorg/restlet/security/MemoryRealm$DefaultEnroler;
.super Ljava/lang/Object;
.source "MemoryRealm.java"

# interfaces
.implements Lorg/restlet/security/Enroler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/restlet/security/MemoryRealm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultEnroler"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/restlet/security/MemoryRealm;


# direct methods
.method private constructor <init>(Lorg/restlet/security/MemoryRealm;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/restlet/security/MemoryRealm;Lorg/restlet/security/MemoryRealm$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/restlet/security/MemoryRealm;
    .param p2, "x1"    # Lorg/restlet/security/MemoryRealm$1;

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lorg/restlet/security/MemoryRealm$DefaultEnroler;-><init>(Lorg/restlet/security/MemoryRealm;)V

    return-void
.end method


# virtual methods
.method public enrole(Lorg/restlet/data/ClientInfo;)V
    .locals 8
    .param p1, "clientInfo"    # Lorg/restlet/data/ClientInfo;

    .prologue
    .line 59
    iget-object v6, p0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getUser()Lorg/restlet/security/User;

    move-result-object v7

    invoke-virtual {v7}, Lorg/restlet/security/User;->getIdentifier()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lorg/restlet/security/MemoryRealm;->findUser(Ljava/lang/String;)Lorg/restlet/security/User;

    move-result-object v3

    .line 61
    .local v3, "user":Lorg/restlet/security/User;
    if-eqz v3, :cond_1

    .line 63
    iget-object v6, p0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {v6, v3}, Lorg/restlet/security/MemoryRealm;->findGroups(Lorg/restlet/security/User;)Ljava/util/Set;

    move-result-object v4

    .line 66
    .local v4, "userGroups":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Group;>;"
    iget-object v6, p0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {v6, v3}, Lorg/restlet/security/MemoryRealm;->findRoles(Lorg/restlet/security/User;)Ljava/util/Set;

    move-result-object v5

    .line 68
    .local v5, "userRoles":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/security/Role;

    .line 69
    .local v2, "role":Lorg/restlet/security/Role;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 73
    .end local v2    # "role":Lorg/restlet/security/Role;
    :cond_0
    iget-object v6, p0, Lorg/restlet/security/MemoryRealm$DefaultEnroler;->this$0:Lorg/restlet/security/MemoryRealm;

    invoke-virtual {v6, v4}, Lorg/restlet/security/MemoryRealm;->findRoles(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 75
    .local v0, "groupRoles":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/restlet/security/Role;

    .line 76
    .restart local v2    # "role":Lorg/restlet/security/Role;
    invoke-virtual {p1}, Lorg/restlet/data/ClientInfo;->getRoles()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 79
    .end local v0    # "groupRoles":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "role":Lorg/restlet/security/Role;
    .end local v4    # "userGroups":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Group;>;"
    .end local v5    # "userRoles":Ljava/util/Set;, "Ljava/util/Set<Lorg/restlet/security/Role;>;"
    :cond_1
    return-void
.end method

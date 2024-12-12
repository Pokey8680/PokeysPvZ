.class public Lorg/restlet/security/Role;
.super Ljava/lang/Object;
.source "Role.java"

# interfaces
.implements Ljava/security/Principal;


# static fields
.field public static final ALL:Lorg/restlet/security/Role;


# instance fields
.field private final childRoles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation
.end field

.field private volatile description:Ljava/lang/String;

.field private volatile name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 61
    new-instance v0, Lorg/restlet/security/Role$1;

    const-string v1, "*"

    const-string v2, "Role that covers all existing roles."

    invoke-direct {v0, v1, v2}, Lorg/restlet/security/Role$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lorg/restlet/security/Role;->ALL:Lorg/restlet/security/Role;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 88
    invoke-direct {p0, v0, v0}, Lorg/restlet/security/Role;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lorg/restlet/security/Role;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 110
    iput-object p1, p0, Lorg/restlet/security/Role;->name:Ljava/lang/String;

    .line 111
    iput-object p2, p0, Lorg/restlet/security/Role;->description:Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lorg/restlet/security/Role;->childRoles:Ljava/util/List;

    .line 113
    return-void
.end method


# virtual methods
.method public getChildRoles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;"
        }
    .end annotation

    .prologue
    .line 121
    iget-object v0, p0, Lorg/restlet/security/Role;->childRoles:Ljava/util/List;

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lorg/restlet/security/Role;->description:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 139
    iget-object v0, p0, Lorg/restlet/security/Role;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setChildRoles(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lorg/restlet/security/Role;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "childRoles":Ljava/util/List;, "Ljava/util/List<Lorg/restlet/security/Role;>;"
    invoke-virtual {p0}, Lorg/restlet/security/Role;->getChildRoles()Ljava/util/List;

    move-result-object v1

    monitor-enter v1

    .line 151
    :try_start_0
    invoke-virtual {p0}, Lorg/restlet/security/Role;->getChildRoles()Ljava/util/List;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 152
    invoke-virtual {p0}, Lorg/restlet/security/Role;->getChildRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 154
    if-eqz p1, :cond_0

    .line 155
    invoke-virtual {p0}, Lorg/restlet/security/Role;->getChildRoles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 158
    :cond_0
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 0
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 168
    iput-object p1, p0, Lorg/restlet/security/Role;->description:Ljava/lang/String;

    .line 169
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 178
    iput-object p1, p0, Lorg/restlet/security/Role;->name:Ljava/lang/String;

    .line 179
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lorg/restlet/security/Role;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

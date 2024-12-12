.class public Lorg/restlet/engine/security/RoleMapping;
.super Ljava/lang/Object;
.source "RoleMapping.java"


# instance fields
.field private volatile source:Ljava/lang/Object;

.field private volatile target:Lorg/restlet/security/Role;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, v0, v0}, Lorg/restlet/engine/security/RoleMapping;-><init>(Ljava/lang/Object;Lorg/restlet/security/Role;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Lorg/restlet/security/Role;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;
    .param p2, "target"    # Lorg/restlet/security/Role;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Lorg/restlet/engine/security/RoleMapping;->source:Ljava/lang/Object;

    .line 72
    iput-object p2, p0, Lorg/restlet/engine/security/RoleMapping;->target:Lorg/restlet/security/Role;

    .line 73
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lorg/restlet/engine/security/RoleMapping;->source:Ljava/lang/Object;

    return-object v0
.end method

.method public getTarget()Lorg/restlet/security/Role;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lorg/restlet/engine/security/RoleMapping;->target:Lorg/restlet/security/Role;

    return-object v0
.end method

.method public setSource(Ljava/lang/Object;)V
    .locals 0
    .param p1, "source"    # Ljava/lang/Object;

    .prologue
    .line 84
    iput-object p1, p0, Lorg/restlet/engine/security/RoleMapping;->source:Ljava/lang/Object;

    .line 85
    return-void
.end method

.method public setTarget(Lorg/restlet/security/Role;)V
    .locals 0
    .param p1, "target"    # Lorg/restlet/security/Role;

    .prologue
    .line 88
    iput-object p1, p0, Lorg/restlet/engine/security/RoleMapping;->target:Lorg/restlet/security/Role;

    .line 89
    return-void
.end method

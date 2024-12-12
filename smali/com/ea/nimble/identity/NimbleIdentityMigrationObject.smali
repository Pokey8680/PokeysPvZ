.class Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;
.super Ljava/lang/Object;
.source "NimbleIdentityMigrationObject.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1L


# instance fields
.field m_currentAuthenticatorId:Ljava/lang/String;

.field m_currentAuthenticatorPid:Ljava/lang/String;

.field m_migrationGUID:Ljava/lang/String;

.field m_newAuthenticatorId:Ljava/lang/String;

.field m_newAuthenticatorPid:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "migrationGUId"    # Ljava/lang/String;
    .param p2, "newAuthenticatorId"    # Ljava/lang/String;
    .param p3, "newAuthenticatorPid"    # Ljava/lang/String;
    .param p4, "currentAuthenticatorId"    # Ljava/lang/String;
    .param p5, "currentAuthenticatorPid"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_migrationGUID:Ljava/lang/String;

    .line 26
    iput-object p2, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorId:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_newAuthenticatorPid:Ljava/lang/String;

    .line 28
    iput-object p4, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorId:Ljava/lang/String;

    .line 29
    iput-object p5, p0, Lcom/ea/nimble/identity/NimbleIdentityMigrationObject;->m_currentAuthenticatorPid:Ljava/lang/String;

    .line 30
    return-void
.end method

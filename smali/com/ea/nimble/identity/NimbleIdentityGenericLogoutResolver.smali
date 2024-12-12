.class public Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityGenericLogoutResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;


# instance fields
.field private m_authenticatorId:Ljava/lang/String;

.field private m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V
    .locals 4
    .param p1, "authenticator"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_authenticatorId:Ljava/lang/String;

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

    .line 18
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentity;->getComponent()Lcom/ea/nimble/identity/INimbleIdentity;

    move-result-object v1

    invoke-interface {v1}, Lcom/ea/nimble/identity/INimbleIdentity;->getLoggedInAuthenticators()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 20
    .local v0, "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 22
    .end local v0    # "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLoggingOutAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_authenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public getStillLoggedInAuthenticatorIds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 28
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLogoutResolver;->m_stillLoggedInAuthenticatorIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public resolve(Ljava/lang/String;)V
    .locals 2
    .param p1, "mainAuthenticatorId"    # Ljava/lang/String;

    .prologue
    .line 40
    invoke-static {p1}, Lcom/ea/nimble/Utility;->validString(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 42
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 43
    .local v0, "mainAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    if-eqz v0, :cond_0

    .line 45
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->resolveLogout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 48
    .end local v0    # "mainAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    return-void
.end method

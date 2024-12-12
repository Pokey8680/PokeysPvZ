.class Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;
.super Ljava/lang/Object;
.source "NimbleIdentityGenericLoginResolver.java"

# interfaces
.implements Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;


# instance fields
.field private m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

.field private m_authenticatorId:Ljava/lang/String;

.field private m_loggedInAuthenticatorIds:Ljava/util/ArrayList;
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
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iput-object p1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    .line 22
    invoke-interface {p1}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticatorId:Ljava/lang/String;

    .line 24
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    .line 25
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

    .line 27
    .local v0, "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    invoke-interface {v0}, Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;->getAuthenticatorId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 31
    .end local v0    # "auth":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLoggedInAuthenticatorIds()Ljava/util/List;
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
    .line 36
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_loggedInAuthenticatorIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getLoggingInAuthenticatorId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticatorId:Ljava/lang/String;

    return-object v0
.end method

.method public highlight()V
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v0

    .line 67
    .local v0, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    iget-object v1, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v0, v1}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->highlight(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 68
    return-void
.end method

.method public ignore()V
    .locals 4

    .prologue
    .line 48
    const-string v0, "Game decided to resolve login of %s by ignoring"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticatorId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/ea/nimble/Log$Helper;->LOGI(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    return-void
.end method

.method public switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
    .locals 3
    .param p1, "callback"    # Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;

    .prologue
    .line 57
    invoke-static {}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getComponent()Lcom/ea/nimble/identity/NimbleIdentityImpl;

    move-result-object v1

    .line 58
    .local v1, "identity":Lcom/ea/nimble/identity/NimbleIdentityImpl;
    const-string v2, "anonymous"

    invoke-virtual {v1, v2}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    move-result-object v0

    .line 59
    .local v0, "currentAuthenticator":Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
    iget-object v2, p0, Lcom/ea/nimble/identity/NimbleIdentityGenericLoginResolver;->m_authenticator:Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;

    invoke-virtual {v1, p1, v2, v0}, Lcom/ea/nimble/identity/NimbleIdentityImpl;->switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;)V

    .line 60
    return-void
.end method

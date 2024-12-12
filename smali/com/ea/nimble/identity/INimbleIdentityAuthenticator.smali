.class public interface abstract Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
.super Ljava/lang/Object;
.source "INimbleIdentityAuthenticator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;,
        Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;,
        Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;,
        Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;,
        Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
    }
.end annotation


# static fields
.field public static final AUTHENTICATOR_COMPONENT_PREFIX:Ljava/lang/String; = "com.ea.nimble.identity.authenticator."


# virtual methods
.method public abstract getAuthenticatorId()Ljava/lang/String;
.end method

.method public abstract getPersonaByNamespace(Ljava/lang/String;J)Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end method

.method public abstract getPersonaByNamespace(Ljava/lang/String;Ljava/lang/String;)Lcom/ea/nimble/identity/NimbleIdentityPersona;
.end method

.method public abstract getPersonas()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/NimbleIdentityPersona;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPidInfo()Lcom/ea/nimble/identity/NimbleIdentityPidInfo;
.end method

.method public abstract getState()Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticationState;
.end method

.method public abstract getUserInfo()Lcom/ea/nimble/identity/NimbleIdentityUserInfo;
.end method

.method public abstract login(Lcom/ea/nimble/identity/NimbleIdentityLoginParams;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

.method public abstract logout(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

.method public abstract refreshPersonas(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

.method public abstract refreshPidInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

.method public abstract refreshUserInfo(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

.method public abstract requestAccessToken(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleAuthenticatorAccessTokenCallback;)V
.end method

.method public abstract requestAuthCode(Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
.end method

.method public abstract requestIdentityForFriends(Ljava/util/ArrayList;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityFriendsIdentityInfoCallback;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

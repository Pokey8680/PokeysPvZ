.class public interface abstract Lcom/ea/nimble/identity/INimbleIdentity;
.super Ljava/lang/Object;
.source "INimbleIdentity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
    }
.end annotation


# static fields
.field public static final EXTRA_NIMBLE_IDENTITY_AUTOREFRESH_VALUE:Ljava/lang/String; = "nimble.identity.extra.autorefresh.value"

.field public static final MIGRATION_PERSISTENCE_ID:Ljava/lang/String; = "nimble.notification.identity.migraiton"

.field public static final NIMBLE_COMPONENT_ID_IDENTITY:Ljava/lang/String; = "com.ea.nimble.identity"

.field public static final NIMBLE_NOTIFICATION_IDENTITY_UPDATE:Ljava/lang/String; = "nimble.notification.identity.update"

.field public static final NOTIFICATION_NIMBLE_IDENTITY_AUTOREFRESH_CHANGE:Ljava/lang/String; = "nimble.identity.notification.autorefresh_changed"


# virtual methods
.method public abstract getAuthenticatorById(Ljava/lang/String;)Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;
.end method

.method public abstract getAuthenticators()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getAutoRefreshFlag()Z
.end method

.method public abstract getLoggedInAuthenticators()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/ea/nimble/identity/INimbleIdentityAuthenticator;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPidMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getState()Lcom/ea/nimble/identity/INimbleIdentity$NimbleIdentityState;
.end method

.method public abstract requestServerAuthCodeForLegacyOriginToken(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityServerAuthCodeCallback;)V
.end method

.method public abstract setAuthenticationConductor(Lcom/ea/nimble/identity/INimbleIdentityAuthenticationConductor;)V
.end method

.method public abstract setAutoRefreshFlag(Z)V
.end method

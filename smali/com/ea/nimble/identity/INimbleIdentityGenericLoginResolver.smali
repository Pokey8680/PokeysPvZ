.class public interface abstract Lcom/ea/nimble/identity/INimbleIdentityGenericLoginResolver;
.super Ljava/lang/Object;
.source "INimbleIdentityGenericLoginResolver.java"


# virtual methods
.method public abstract getLoggedInAuthenticatorIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getLoggingInAuthenticatorId()Ljava/lang/String;
.end method

.method public abstract highlight()V
.end method

.method public abstract ignore()V
.end method

.method public abstract switchAuthenticators(Lcom/ea/nimble/identity/INimbleIdentityAuthenticator$NimbleIdentityAuthenticatorCallback;)V
.end method

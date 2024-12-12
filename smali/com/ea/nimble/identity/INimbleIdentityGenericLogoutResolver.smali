.class public interface abstract Lcom/ea/nimble/identity/INimbleIdentityGenericLogoutResolver;
.super Ljava/lang/Object;
.source "INimbleIdentityGenericLogoutResolver.java"


# virtual methods
.method public abstract getLoggingOutAuthenticatorId()Ljava/lang/String;
.end method

.method public abstract getStillLoggedInAuthenticatorIds()Ljava/util/List;
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

.method public abstract resolve(Ljava/lang/String;)V
.end method

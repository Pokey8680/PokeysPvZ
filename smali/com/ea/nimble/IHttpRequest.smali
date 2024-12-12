.class public interface abstract Lcom/ea/nimble/IHttpRequest;
.super Ljava/lang/Object;
.source "IHttpRequest.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ea/nimble/IHttpRequest$OverwritePolicy;,
        Lcom/ea/nimble/IHttpRequest$Method;
    }
.end annotation


# virtual methods
.method public abstract getData()[B
.end method

.method public abstract getHeaders()Ljava/util/Map;
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

.method public abstract getMethod()Lcom/ea/nimble/IHttpRequest$Method;
.end method

.method public abstract getOverwritePolicy()Ljava/util/EnumSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/EnumSet",
            "<",
            "Lcom/ea/nimble/IHttpRequest$OverwritePolicy;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getRunInBackground()Z
.end method

.method public abstract getTargetFilePath()Ljava/lang/String;
.end method

.method public abstract getTimeout()D
.end method

.method public abstract getUrl()Ljava/net/URL;
.end method

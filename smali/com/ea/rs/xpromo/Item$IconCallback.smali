.class public interface abstract Lcom/ea/rs/xpromo/Item$IconCallback;
.super Ljava/lang/Object;
.source "Item.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ea/rs/xpromo/Item;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "IconCallback"
.end annotation


# virtual methods
.method public abstract onDownloadToBuffer([B)V
.end method

.method public abstract onDownloadToFile(Ljava/lang/String;)V
.end method

.method public abstract onError(Ljava/lang/Exception;)V
.end method

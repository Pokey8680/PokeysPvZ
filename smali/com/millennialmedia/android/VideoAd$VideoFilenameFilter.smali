.class Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;
.super Ljava/lang/Object;
.source "VideoAd.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/millennialmedia/android/VideoAd;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VideoFilenameFilter"
.end annotation


# instance fields
.field private videoAdRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/millennialmedia/android/VideoAd;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/VideoAd;)V
    .locals 1
    .param p1, "videoAd"    # Lcom/millennialmedia/android/VideoAd;

    .prologue
    .line 446
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 447
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;->videoAdRef:Ljava/lang/ref/WeakReference;

    .line 448
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 4
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "filename"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 453
    iget-object v3, p0, Lcom/millennialmedia/android/VideoAd$VideoFilenameFilter;->videoAdRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/millennialmedia/android/VideoAd;

    .line 454
    .local v1, "videoAd":Lcom/millennialmedia/android/VideoAd;
    if-eqz v1, :cond_0

    .line 455
    invoke-virtual {v1}, Lcom/millennialmedia/android/VideoAd;->getId()Ljava/lang/String;

    move-result-object v0

    .line 456
    .local v0, "id":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 460
    .end local v0    # "id":Ljava/lang/String;
    :cond_0
    :goto_0
    return v2

    .line 458
    .restart local v0    # "id":Ljava/lang/String;
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    goto :goto_0
.end method

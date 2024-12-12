.class public Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;
.super Ljava/lang/Object;
.source "AppGalleryConfigParams.java"


# instance fields
.field a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    const-string v0, "http://appgalleries.inmobi.com/inmobi_sdk"

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    .line 19
    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    const-string v0, "url"

    invoke-static {p1, v0}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getStringFromMap(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/inmobi/androidsdk/bootstrapper/AppGalleryConfigParams;->a:Ljava/lang/String;

    .line 23
    return-void
.end method

.class public Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;
.super Ljava/lang/Object;
.source "NativeConfigParams.java"


# instance fields
.field a:I

.field b:I

.field c:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/16 v0, 0x64

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->a:I

    .line 15
    const/4 v0, 0x3

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->b:I

    .line 16
    const/16 v0, 0xa

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->c:I

    return-void
.end method


# virtual methods
.method public getmFetchLimit()I
    .locals 1

    .prologue
    .line 27
    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->c:I

    return v0
.end method

.method public getmMaxCacheSize()I
    .locals 1

    .prologue
    .line 19
    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->a:I

    return v0
.end method

.method public getmMinLimit()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->b:I

    return v0
.end method

.method public setFromMap(Ljava/util/Map;)V
    .locals 4
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
    const-wide/32 v2, 0x7fffffff

    const/4 v1, 0x1

    .line 31
    const-string v0, "mcl"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->a:I

    .line 33
    const-string v0, "mt"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->b:I

    .line 35
    const-string v0, "fl"

    invoke-static {p1, v0, v1, v2, v3}, Lcom/inmobi/commons/internal/InternalSDKUtil;->getIntFromMap(Ljava/util/Map;Ljava/lang/String;IJ)I

    move-result v0

    iput v0, p0, Lcom/inmobi/androidsdk/bootstrapper/NativeConfigParams;->c:I

    .line 38
    return-void
.end method

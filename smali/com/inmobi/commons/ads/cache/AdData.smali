.class public Lcom/inmobi/commons/ads/cache/AdData;
.super Ljava/lang/Object;
.source "AdData.java"


# instance fields
.field private a:J

.field private b:Ljava/lang/String;

.field private c:J

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAdId()J
    .locals 2

    .prologue
    .line 10
    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    return-wide v0
.end method

.method public getAdType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .prologue
    .line 22
    iget-wide v0, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    return-wide v0
.end method

.method public setAdId(J)V
    .locals 1

    .prologue
    .line 13
    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->a:J

    .line 14
    return-void
.end method

.method public setAdType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->e:Ljava/lang/String;

    .line 38
    return-void
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 19
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->b:Ljava/lang/String;

    .line 20
    return-void
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->d:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public setTimestamp(J)V
    .locals 1

    .prologue
    .line 25
    iput-wide p1, p0, Lcom/inmobi/commons/ads/cache/AdData;->c:J

    .line 26
    return-void
.end method

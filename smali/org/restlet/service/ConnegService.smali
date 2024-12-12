.class public Lorg/restlet/service/ConnegService;
.super Lorg/restlet/service/Service;
.source "ConnegService.java"


# instance fields
.field private volatile strict:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/restlet/service/ConnegService;-><init>(Z)V

    .line 64
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lorg/restlet/service/Service;-><init>(Z)V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/restlet/service/ConnegService;->strict:Z

    .line 75
    return-void
.end method


# virtual methods
.method public getPreferredVariant(Ljava/util/List;Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)Lorg/restlet/representation/Variant;
    .locals 2
    .param p2, "request"    # Lorg/restlet/Request;
    .param p3, "metadataService"    # Lorg/restlet/service/MetadataService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;",
            "Lorg/restlet/Request;",
            "Lorg/restlet/service/MetadataService;",
            ")",
            "Lorg/restlet/representation/Variant;"
        }
    .end annotation

    .prologue
    .line 96
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    invoke-virtual {p0}, Lorg/restlet/service/ConnegService;->isStrict()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Lorg/restlet/engine/application/StrictConneg;

    invoke-direct {v0, p2, p3}, Lorg/restlet/engine/application/StrictConneg;-><init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V

    .line 98
    .local v0, "conneg":Lorg/restlet/engine/application/Conneg;
    :goto_0
    invoke-virtual {v0, p1}, Lorg/restlet/engine/application/Conneg;->getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;

    move-result-object v1

    return-object v1

    .line 96
    .end local v0    # "conneg":Lorg/restlet/engine/application/Conneg;
    :cond_0
    new-instance v0, Lorg/restlet/engine/application/FlexibleConneg;

    invoke-direct {v0, p2, p3}, Lorg/restlet/engine/application/FlexibleConneg;-><init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V

    goto :goto_0
.end method

.method public isStrict()Z
    .locals 1

    .prologue
    .line 109
    iget-boolean v0, p0, Lorg/restlet/service/ConnegService;->strict:Z

    return v0
.end method

.method public setStrict(Z)V
    .locals 0
    .param p1, "strict"    # Z

    .prologue
    .line 121
    iput-boolean p1, p0, Lorg/restlet/service/ConnegService;->strict:Z

    .line 122
    return-void
.end method

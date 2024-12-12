.class public abstract Lorg/restlet/engine/application/Conneg;
.super Ljava/lang/Object;
.source "Conneg.java"


# instance fields
.field private final request:Lorg/restlet/Request;


# direct methods
.method public constructor <init>(Lorg/restlet/Request;Lorg/restlet/service/MetadataService;)V
    .locals 0
    .param p1, "request"    # Lorg/restlet/Request;
    .param p2, "metadataService"    # Lorg/restlet/service/MetadataService;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lorg/restlet/engine/application/Conneg;->request:Lorg/restlet/Request;

    .line 62
    return-void
.end method


# virtual methods
.method public getPreferredVariant(Ljava/util/List;)Lorg/restlet/representation/Variant;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lorg/restlet/representation/Variant;",
            ">;)",
            "Lorg/restlet/representation/Variant;"
        }
    .end annotation

    .prologue
    .line 87
    .local p1, "variants":Ljava/util/List;, "Ljava/util/List<+Lorg/restlet/representation/Variant;>;"
    const/4 v3, 0x0

    .line 89
    .local v3, "result":Lorg/restlet/representation/Variant;
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 90
    const/high16 v0, -0x40800000    # -1.0f

    .line 94
    .local v0, "bestScore":F
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/restlet/representation/Variant;

    .line 95
    .local v4, "variant":Lorg/restlet/representation/Variant;
    invoke-virtual {p0, v4}, Lorg/restlet/engine/application/Conneg;->scoreVariant(Lorg/restlet/representation/Variant;)F

    move-result v1

    .line 97
    .local v1, "current":F
    cmpl-float v5, v1, v0

    if-lez v5, :cond_0

    .line 98
    move v0, v1

    .line 99
    move-object v3, v4

    goto :goto_0

    .line 104
    .end local v0    # "bestScore":F
    .end local v1    # "current":F
    .end local v2    # "i$":Ljava/util/Iterator;
    .end local v4    # "variant":Lorg/restlet/representation/Variant;
    :cond_1
    return-object v3
.end method

.method public getRequest()Lorg/restlet/Request;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lorg/restlet/engine/application/Conneg;->request:Lorg/restlet/Request;

    return-object v0
.end method

.method public abstract scoreVariant(Lorg/restlet/representation/Variant;)F
.end method

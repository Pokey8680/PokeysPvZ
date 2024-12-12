.class Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;
.super Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;
.source "ImmutableBiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation


# static fields
.field private static final serialVersionUID:J


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 258
    .local p1, "bimap":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap<**>;"
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$SerializedForm;-><init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V

    .line 259
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 261
    new-instance v0, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;-><init>()V

    .line 262
    .local v0, "builder":Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$Builder<Ljava/lang/Object;Ljava/lang/Object;>;"
    invoke-virtual {p0, v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableBiMap$SerializedForm;->createMap(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap$Builder;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

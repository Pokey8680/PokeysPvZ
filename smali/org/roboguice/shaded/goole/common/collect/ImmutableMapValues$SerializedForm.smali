.class Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm;
.super Ljava/lang/Object;
.source "ImmutableMapValues.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SerializedForm"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtIncompatible;
    value = "serialization"
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field final map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<*TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap",
            "<*TV;>;)V"
        }
    .end annotation

    .prologue
    .line 85
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm<TV;>;"
    .local p1, "map":Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMap<*TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    .line 87
    return-void
.end method


# virtual methods
.method readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm;, "Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm<TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/collect/ImmutableMapValues$SerializedForm;->map:Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;

    invoke-virtual {v0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableMap;->values()Lorg/roboguice/shaded/goole/common/collect/ImmutableCollection;

    move-result-object v0

    return-object v0
.end method

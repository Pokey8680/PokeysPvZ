.class public Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardValues;
.super Lorg/roboguice/shaded/goole/common/collect/Maps$Values;
.source "ForwardingMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "StandardValues"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/roboguice/shaded/goole/common/collect/Maps$Values",
        "<TK;TV;>;"
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
.end annotation


# instance fields
.field final synthetic this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;


# direct methods
.method public constructor <init>(Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;)V
    .locals 0

    .prologue
    .line 228
    .local p0, "this":Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardValues;, "Lorg/roboguice/shaded/goole/common/collect/ForwardingMap<TK;TV;>.StandardValues;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/collect/ForwardingMap$StandardValues;->this$0:Lorg/roboguice/shaded/goole/common/collect/ForwardingMap;

    .line 229
    invoke-direct {p0, p1}, Lorg/roboguice/shaded/goole/common/collect/Maps$Values;-><init>(Ljava/util/Map;)V

    .line 230
    return-void
.end method
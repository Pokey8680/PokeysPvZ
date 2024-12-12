.class final Lorg/roboguice/shaded/goole/common/cache/LongAddables;
.super Ljava/lang/Object;
.source "LongAddables.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
    emulated = true
.end annotation


# static fields
.field private static final SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<",
            "Lorg/roboguice/shaded/goole/common/cache/LongAddable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 37
    :try_start_0
    new-instance v2, Lorg/roboguice/shaded/goole/common/cache/LongAdder;

    invoke-direct {v2}, Lorg/roboguice/shaded/goole/common/cache/LongAdder;-><init>()V

    .line 38
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;-><init>()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    .local v0, "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<Lorg/roboguice/shaded/goole/common/cache/LongAddable;>;"
    :goto_0
    sput-object v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    .line 53
    return-void

    .line 44
    .end local v0    # "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<Lorg/roboguice/shaded/goole/common/cache/LongAddable;>;"
    :catch_0
    move-exception v1

    .line 45
    .local v1, "t":Ljava/lang/Throwable;
    new-instance v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;

    invoke-direct {v0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$2;-><init>()V

    .restart local v0    # "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<Lorg/roboguice/shaded/goole/common/cache/LongAddable;>;"
    goto :goto_0
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static create()Lorg/roboguice/shaded/goole/common/cache/LongAddable;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lorg/roboguice/shaded/goole/common/cache/LongAddables;->SUPPLIER:Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-interface {v0}, Lorg/roboguice/shaded/goole/common/base/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/cache/LongAddable;

    return-object v0
.end method

.class final Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "LongAddables.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/LongAddable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LongAddables;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PureJavaLongAddable"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/cache/LongAddables$1;

    .prologue
    .line 59
    invoke-direct {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;-><init>()V

    return-void
.end method


# virtual methods
.method public add(J)V
    .locals 1
    .param p1, "x"    # J

    .prologue
    .line 67
    invoke-virtual {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;->getAndAdd(J)J

    .line 68
    return-void
.end method

.method public increment()V
    .locals 0

    .prologue
    .line 62
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;->getAndIncrement()J

    .line 63
    return-void
.end method

.method public sum()J
    .locals 2

    .prologue
    .line 72
    invoke-virtual {p0}, Lorg/roboguice/shaded/goole/common/cache/LongAddables$PureJavaLongAddable;->get()J

    move-result-wide v0

    return-wide v0
.end method

.class public final Lorg/codegist/common/lang/Disposables;
.super Ljava/lang/Object;
.source "Disposables.java"


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public static dispose(Ljava/lang/Object;)V
    .locals 1
    .param p0, "o"    # Ljava/lang/Object;

    .prologue
    .line 33
    instance-of v0, p0, Lorg/codegist/common/lang/Disposable;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    check-cast p0, Lorg/codegist/common/lang/Disposable;

    .end local p0    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Lorg/codegist/common/lang/Disposable;->dispose()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    .line 36
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static varargs dispose([Ljava/lang/Object;)V
    .locals 4
    .param p0, "os"    # [Ljava/lang/Object;

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 44
    .local v3, "o":Ljava/lang/Object;
    invoke-static {v3}, Lorg/codegist/common/lang/Disposables;->dispose(Ljava/lang/Object;)V

    .line 43
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 46
    .end local v3    # "o":Ljava/lang/Object;
    :cond_0
    return-void
.end method

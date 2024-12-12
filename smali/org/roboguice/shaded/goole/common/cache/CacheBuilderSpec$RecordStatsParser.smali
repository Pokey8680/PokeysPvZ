.class Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$RecordStatsParser;
.super Ljava/lang/Object;
.source "CacheBuilderSpec.java"

# interfaces
.implements Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec$ValueParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RecordStatsParser"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 397
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "spec"    # Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;
    .param p2, "key"    # Ljava/lang/String;
    .param p3, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 401
    if-nez p3, :cond_1

    move v0, v1

    :goto_0
    const-string v3, "recordStats does not take values"

    invoke-static {v0, v3}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 402
    iget-object v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    move v2, v1

    :cond_0
    const-string v0, "recordStats already set"

    invoke-static {v2, v0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 403
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p1, Lorg/roboguice/shaded/goole/common/cache/CacheBuilderSpec;->recordStats:Ljava/lang/Boolean;

    .line 404
    return-void

    :cond_1
    move v0, v2

    .line 401
    goto :goto_0
.end method

.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongAccessEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry",
        "<TK;TV;>;"
    }
.end annotation


# instance fields
.field volatile accessTime:J

.field nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field

.field previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "Segment.this"
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 2
    .param p2, "hash"    # I
    .param p3    # Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;I",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1110
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1115
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1127
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1140
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1111
    return-void
.end method


# virtual methods
.method public getAccessTime()J
    .locals 2

    .prologue
    .line 1119
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    return-wide v0
.end method

.method public getNextInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1132
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInAccessQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1145
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public setAccessTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1124
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->accessTime:J

    .line 1125
    return-void
.end method

.method public setNextInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1137
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->nextAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1138
    return-void
.end method

.method public setPreviousInAccessQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1150
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongAccessEntry;->previousAccess:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1151
    return-void
.end method

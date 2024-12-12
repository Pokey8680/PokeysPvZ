.class final Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;
.super Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "StrongWriteEntry"
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
.field nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
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

.field previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
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

.field volatile writeTime:J


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
    .line 1156
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p3, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    invoke-direct {p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongEntry;-><init>(Ljava/lang/Object;ILorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V

    .line 1161
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1173
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1186
    invoke-static {}, Lorg/roboguice/shaded/goole/common/cache/LocalCache;->nullEntry()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1157
    return-void
.end method


# virtual methods
.method public getNextInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1178
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getPreviousInWriteQueue()Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 1191
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    return-object v0
.end method

.method public getWriteTime()J
    .locals 2

    .prologue
    .line 1165
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iget-wide v0, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    return-wide v0
.end method

.method public setNextInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1183
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "next":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->nextWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1184
    return-void
.end method

.method public setPreviousInWriteQueue(Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry",
            "<TK;TV;>;)V"
        }
    .end annotation

    .prologue
    .line 1196
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    .local p1, "previous":Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry<TK;TV;>;"
    iput-object p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->previousWrite:Lorg/roboguice/shaded/goole/common/cache/LocalCache$ReferenceEntry;

    .line 1197
    return-void
.end method

.method public setWriteTime(J)V
    .locals 1
    .param p1, "time"    # J

    .prologue
    .line 1170
    .local p0, "this":Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;, "Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry<TK;TV;>;"
    iput-wide p1, p0, Lorg/roboguice/shaded/goole/common/cache/LocalCache$StrongWriteEntry;->writeTime:J

    .line 1171
    return-void
.end method

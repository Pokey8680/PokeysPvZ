.class public final Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;
.super Ljava/lang/Object;
.source "Equivalence.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/roboguice/shaded/goole/common/base/Equivalence;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Wrapper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J


# instance fields
.field private final equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TT;>;"
        }
    .end annotation
.end field

.field private final reference:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/roboguice/shaded/goole/common/base/Equivalence",
            "<-TT;>;TT;)V"
        }
    .end annotation

    .prologue
    .line 176
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    .local p1, "equivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<-TT;>;"
    .local p2, "reference":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 177
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iput-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 178
    iput-object p2, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    .line 179
    return-void
.end method

.method synthetic constructor <init>(Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/lang/Object;Lorg/roboguice/shaded/goole/common/base/Equivalence$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/roboguice/shaded/goole/common/base/Equivalence;
    .param p2, "x1"    # Ljava/lang/Object;
    .param p3, "x2"    # Lorg/roboguice/shaded/goole/common/base/Equivalence$1;

    .prologue
    .line 172
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    invoke-direct {p0, p1, p2}, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;-><init>(Lorg/roboguice/shaded/goole/common/base/Equivalence;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 192
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    if-ne p1, p0, :cond_0

    .line 193
    const/4 v2, 0x1

    .line 208
    :goto_0
    return v2

    .line 195
    :cond_0
    instance-of v2, p1, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;

    if-eqz v2, :cond_1

    move-object v1, p1

    .line 196
    check-cast v1, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;

    .line 198
    .local v1, "that":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<*>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v3, v1, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 204
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    .line 205
    .local v0, "equivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    iget-object v2, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    iget-object v3, v1, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    goto :goto_0

    .line 208
    .end local v0    # "equivalence":Lorg/roboguice/shaded/goole/common/base/Equivalence;, "Lorg/roboguice/shaded/goole/common/base/Equivalence<Ljava/lang/Object;>;"
    .end local v1    # "that":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<*>;"
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 183
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 215
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    iget-object v0, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Equivalence;->hash(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 223
    .local p0, "this":Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;, "Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->equivalence:Lorg/roboguice/shaded/goole/common/base/Equivalence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".wrap("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/roboguice/shaded/goole/common/base/Equivalence$Wrapper;->reference:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

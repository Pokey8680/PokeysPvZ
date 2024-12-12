.class final Lcom/google/inject/util/Providers$ConstantProvider;
.super Ljava/lang/Object;
.source "Providers.java"

# interfaces
.implements Lcom/google/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Providers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ConstantProvider"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/inject/Provider",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final instance:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 60
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    .local p1, "instance":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    .line 62
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Object;Lcom/google/inject/util/Providers$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Lcom/google/inject/util/Providers$1;

    .prologue
    .line 57
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    invoke-direct {p0, p1}, Lcom/google/inject/util/Providers$ConstantProvider;-><init>(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 73
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    instance-of v0, p1, Lcom/google/inject/util/Providers$ConstantProvider;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    check-cast p1, Lcom/google/inject/util/Providers$ConstantProvider;

    .end local p1    # "obj":Ljava/lang/Object;
    iget-object v1, p1, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    invoke-static {v0, v1}, Lorg/roboguice/shaded/goole/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public get()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 65
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    iget-object v0, p0, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 78
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v0}, Lorg/roboguice/shaded/goole/common/base/Objects;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 69
    .local p0, "this":Lcom/google/inject/util/Providers$ConstantProvider;, "Lcom/google/inject/util/Providers$ConstantProvider<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "of("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/inject/util/Providers$ConstantProvider;->instance:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

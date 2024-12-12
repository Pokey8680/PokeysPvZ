.class public final Lorg/roboguice/shaded/goole/common/base/Suppliers;
.super Ljava/lang/Object;
.source "Suppliers.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunction;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$ThreadSafeSupplier;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;,
        Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;
    }
.end annotation

.annotation build Lorg/roboguice/shaded/goole/common/annotations/GwtCompatible;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compose(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<-TF;TT;>;",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TF;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "function":Lorg/roboguice/shaded/goole/common/base/Function;, "Lorg/roboguice/shaded/goole/common/base/Function<-TF;TT;>;"
    .local p1, "supplier":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TF;>;"
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;

    invoke-direct {v0, p0, p1}, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierComposition;-><init>(Lorg/roboguice/shaded/goole/common/base/Function;Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v0
.end method

.method public static memoize(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 103
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    instance-of v0, p0, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;

    if-eqz v0, :cond_0

    .end local p0    # "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    :goto_0
    return-object p0

    .restart local p0    # "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    :cond_0
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-direct {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers$MemoizingSupplier;-><init>(Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    move-object p0, v1

    goto :goto_0
.end method

.method public static memoizeWithExpiration(Lorg/roboguice/shaded/goole/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .param p1, "duration"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 162
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/roboguice/shaded/goole/common/base/Suppliers$ExpiringMemoizingSupplier;-><init>(Lorg/roboguice/shaded/goole/common/base/Supplier;JLjava/util/concurrent/TimeUnit;)V

    return-object v0
.end method

.method public static ofInstance(Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 1
    .param p0    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 219
    .local p0, "instance":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;

    invoke-direct {v0, p0}, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierOfInstance;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static supplierFunction()Lorg/roboguice/shaded/goole/common/base/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/roboguice/shaded/goole/common/base/Function",
            "<",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;TT;>;"
        }
    .end annotation

    .annotation build Lorg/roboguice/shaded/goole/common/annotations/Beta;
    .end annotation

    .prologue
    .line 291
    sget-object v0, Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;->INSTANCE:Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunctionImpl;

    .line 292
    .local v0, "sf":Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunction;, "Lorg/roboguice/shaded/goole/common/base/Suppliers$SupplierFunction<TT;>;"
    return-object v0
.end method

.method public static synchronizedSupplier(Lorg/roboguice/shaded/goole/common/base/Supplier;)Lorg/roboguice/shaded/goole/common/base/Supplier;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;)",
            "Lorg/roboguice/shaded/goole/common/base/Supplier",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 258
    .local p0, "delegate":Lorg/roboguice/shaded/goole/common/base/Supplier;, "Lorg/roboguice/shaded/goole/common/base/Supplier<TT;>;"
    new-instance v1, Lorg/roboguice/shaded/goole/common/base/Suppliers$ThreadSafeSupplier;

    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/roboguice/shaded/goole/common/base/Supplier;

    invoke-direct {v1, v0}, Lorg/roboguice/shaded/goole/common/base/Suppliers$ThreadSafeSupplier;-><init>(Lorg/roboguice/shaded/goole/common/base/Supplier;)V

    return-object v1
.end method

.class final Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;
.super Ljava/lang/Object;
.source "Modules.java"

# interfaces
.implements Lcom/google/inject/util/Modules$OverriddenModuleBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/inject/util/Modules;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RealOverriddenModuleBuilder"
.end annotation


# instance fields
.field private final baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/roboguice/shaded/goole/common/collect/ImmutableSet",
            "<",
            "Lcom/google/inject/Module;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/lang/Iterable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 149
    .local p1, "baseModules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 150
    invoke-static {p1}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf(Ljava/lang/Iterable;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    .line 151
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Iterable;Lcom/google/inject/util/Modules$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Iterable;
    .param p2, "x1"    # Lcom/google/inject/util/Modules$1;

    .prologue
    .line 146
    invoke-direct {p0, p1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;)V

    return-void
.end method


# virtual methods
.method public with(Ljava/lang/Iterable;)Lcom/google/inject/Module;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/Module;"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "overrides":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    new-instance v0, Lcom/google/inject/util/Modules$OverrideModule;

    iget-object v1, p0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->baseModules:Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    invoke-direct {v0, p1, v1}, Lcom/google/inject/util/Modules$OverrideModule;-><init>(Ljava/lang/Iterable;Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;)V

    return-object v0
.end method

.method public varargs with([Lcom/google/inject/Module;)Lcom/google/inject/Module;
    .locals 1
    .param p1, "overrides"    # [Lcom/google/inject/Module;

    .prologue
    .line 154
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;->with(Ljava/lang/Iterable;)Lcom/google/inject/Module;

    move-result-object v0

    return-object v0
.end method

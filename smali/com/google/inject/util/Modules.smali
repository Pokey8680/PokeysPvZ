.class public final Lcom/google/inject/util/Modules;
.super Ljava/lang/Object;
.source "Modules.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/inject/util/Modules$1;,
        Lcom/google/inject/util/Modules$ModuleWriter;,
        Lcom/google/inject/util/Modules$OverrideModule;,
        Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;,
        Lcom/google/inject/util/Modules$OverriddenModuleBuilder;,
        Lcom/google/inject/util/Modules$CombinedModule;,
        Lcom/google/inject/util/Modules$EmptyModule;
    }
.end annotation


# static fields
.field public static final EMPTY_MODULE:Lcom/google/inject/Module;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Lcom/google/inject/util/Modules$EmptyModule;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/google/inject/util/Modules$EmptyModule;-><init>(Lcom/google/inject/util/Modules$1;)V

    sput-object v0, Lcom/google/inject/util/Modules;->EMPTY_MODULE:Lcom/google/inject/Module;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static combine(Ljava/lang/Iterable;)Lcom/google/inject/Module;
    .locals 1
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
    .line 112
    .local p0, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    new-instance v0, Lcom/google/inject/util/Modules$CombinedModule;

    invoke-direct {v0, p0}, Lcom/google/inject/util/Modules$CombinedModule;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static varargs combine([Lcom/google/inject/Module;)Lcom/google/inject/Module;
    .locals 1
    .param p0, "modules"    # [Lcom/google/inject/Module;

    .prologue
    .line 105
    invoke-static {p0}, Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;->copyOf([Ljava/lang/Object;)Lorg/roboguice/shaded/goole/common/collect/ImmutableSet;

    move-result-object v0

    invoke-static {v0}, Lcom/google/inject/util/Modules;->combine(Ljava/lang/Iterable;)Lcom/google/inject/Module;

    move-result-object v0

    return-object v0
.end method

.method public static override(Ljava/lang/Iterable;)Lcom/google/inject/util/Modules$OverriddenModuleBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable",
            "<+",
            "Lcom/google/inject/Module;",
            ">;)",
            "Lcom/google/inject/util/Modules$OverriddenModuleBuilder;"
        }
    .end annotation

    .prologue
    .line 98
    .local p0, "modules":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lcom/google/inject/Module;>;"
    new-instance v0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;Lcom/google/inject/util/Modules$1;)V

    return-object v0
.end method

.method public static varargs override([Lcom/google/inject/Module;)Lcom/google/inject/util/Modules$OverriddenModuleBuilder;
    .locals 3
    .param p0, "modules"    # [Lcom/google/inject/Module;

    .prologue
    .line 78
    new-instance v0, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/google/inject/util/Modules$RealOverriddenModuleBuilder;-><init>(Ljava/lang/Iterable;Lcom/google/inject/util/Modules$1;)V

    return-object v0
.end method

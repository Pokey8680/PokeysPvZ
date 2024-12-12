.class public Lroboguice/config/RoboGuiceHierarchyTraversalFilter;
.super Lcom/google/inject/HierarchyTraversalFilter;
.source "RoboGuiceHierarchyTraversalFilter.java"


# static fields
.field private static final ANDROID_PACKAGE:Ljava/lang/String; = "android"

.field protected static final ROBOGUICE_PACKAGE:Ljava/lang/String;


# instance fields
.field private isInRoboGuicePackage:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lroboguice/RoboGuice;

    invoke-virtual {v0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->ROBOGUICE_PACKAGE:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/inject/HierarchyTraversalFilter;-><init>()V

    .line 29
    const/4 v0, 0x0

    iput-boolean v0, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    return-void
.end method


# virtual methods
.method public isWorthScanning(Ljava/lang/Class;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "c":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 33
    if-eqz p1, :cond_0

    const-class v3, Ljava/lang/Object;

    if-ne p1, v3, :cond_1

    .line 44
    :cond_0
    :goto_0
    return v1

    .line 36
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 37
    .local v0, "className":Ljava/lang/String;
    const-string v3, "android"

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 39
    sget-object v3, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->ROBOGUICE_PACKAGE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    iput-boolean v2, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    :cond_2
    move v1, v2

    .line 44
    goto :goto_0

    .line 41
    :cond_3
    iget-boolean v3, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    if-eqz v3, :cond_2

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/google/inject/HierarchyTraversalFilter;->reset()V

    .line 50
    const/4 v0, 0x0

    iput-boolean v0, p0, Lroboguice/config/RoboGuiceHierarchyTraversalFilter;->isInRoboGuicePackage:Z

    .line 51
    return-void
.end method

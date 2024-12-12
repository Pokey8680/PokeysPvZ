.class public Lcom/google/inject/AnnotationDatabaseFinder;
.super Ljava/lang/Object;
.source "AnnotationDatabaseFinder.java"


# instance fields
.field private bindableClassesSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private classesContainingInjectionPointsSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/String;)V
    .locals 9
    .param p1, "additionalPackageNames"    # [Ljava/lang/String;

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    .line 24
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    .line 25
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    .line 26
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    .line 27
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    iput-object v7, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    .line 31
    move-object v2, p1

    .local v2, "arr$":[Ljava/lang/String;
    :try_start_0
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v6, v2, v4

    .line 32
    .local v6, "pkg":Ljava/lang/String;
    const-string v1, "AnnotationDatabaseImpl"

    .line 33
    .local v1, "annotationDatabaseClassName":Ljava/lang/String;
    if-eqz v6, :cond_0

    const-string v7, ""

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 34
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "."

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 36
    :cond_0
    invoke-direct {p0, v1}, Lcom/google/inject/AnnotationDatabaseFinder;->getAnnotationDatabaseInstance(Ljava/lang/String;)Lcom/google/inject/AnnotationDatabase;

    move-result-object v0

    .line 37
    .local v0, "annotationDatabase":Lcom/google/inject/AnnotationDatabase;
    invoke-direct {p0, v0}, Lcom/google/inject/AnnotationDatabaseFinder;->addAnnotationDatabase(Lcom/google/inject/AnnotationDatabase;)V
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 31
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 39
    .end local v0    # "annotationDatabase":Lcom/google/inject/AnnotationDatabase;
    .end local v1    # "annotationDatabaseClassName":Ljava/lang/String;
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v6    # "pkg":Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 40
    .local v3, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v3}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 41
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 42
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :catch_1
    move-exception v3

    .line 43
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 44
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 45
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v3

    .line 46
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 47
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 49
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .restart local v4    # "i$":I
    .restart local v5    # "len$":I
    :cond_1
    return-void
.end method

.method private addAnnotationDatabase(Lcom/google/inject/AnnotationDatabase;)V
    .locals 1
    .param p1, "annotationDatabase"    # Lcom/google/inject/AnnotationDatabase;

    .prologue
    .line 79
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndFieldsNames(Ljava/util/HashMap;)V

    .line 80
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndMethods(Ljava/util/HashMap;)V

    .line 81
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillAnnotationClassesAndConstructors(Ljava/util/HashMap;)V

    .line 82
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillClassesContainingInjectionPointSet(Ljava/util/HashSet;)V

    .line 83
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    invoke-virtual {p1, v0}, Lcom/google/inject/AnnotationDatabase;->fillBindableClasses(Ljava/util/HashSet;)V

    .line 85
    return-void
.end method

.method private getAnnotationDatabaseInstance(Ljava/lang/String;)Lcom/google/inject/AnnotationDatabase;
    .locals 2
    .param p1, "annotationDatabaseClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .prologue
    .line 73
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 74
    .local v1, "annotationDatabaseClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/inject/AnnotationDatabase;

    .line 75
    .local v0, "annotationDatabase":Lcom/google/inject/AnnotationDatabase;
    return-object v0
.end method


# virtual methods
.method public getBindableClassesSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->bindableClassesSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getClassesContainingInjectionPointsSet()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->classesContainingInjectionPointsSet:Ljava/util/HashSet;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedConstructorSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedConstructorSet:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedFieldSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedFieldSet:Ljava/util/HashMap;

    return-object v0
.end method

.method public getMapAnnotationToMapClassContainingInjectionToInjectedMethodSet()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;>;>;"
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/inject/AnnotationDatabaseFinder;->mapAnnotationToMapClassContainingInjectionToInjectedMethodSet:Ljava/util/HashMap;

    return-object v0
.end method
